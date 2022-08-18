<?php
require_once("db_init.php");

if (isset($_POST["import"])) {
    $fileName = $_FILES["file"]["tmp_name"];

    if ($_FILES["file"]["size"] > 0) {
        $file = fopen($fileName, "r");

        $rows_update = 0;
        $rows_add = 0;

        while (($column = fgetcsv($file, 1000, ",")) !== FALSE) {
            $check = mysql_fetch_array(mysql_query("select id FROM products WHERE code = '" . $column[1] . "' AND user_id = '" . $column[5] . "'", $db_link));

            $preview_text = strip_tags($column[3]);
            // если пусто, то 30 символов из поля detail_text
            if (strlen($column[3]) == 0) {
                $preview_text = strip_tags(substr($column[4], 0, 30));
            }

            if ($check != null) {
                $sqlInsert = "update products set name = '" . $column[0] . "', code = '" . $column[1] . "', price = '" . $column[2] . "',
                preview_text = '" . $preview_text . "', detail_text = '" . $column[4] . "', user_id = '" . $column[5] . "'
                WHERE id = '" . $check[0] . "' ";
                $rows_update++;
            }
            else {
                $sqlInsert = "Insert into products (name, code, price, preview_text, detail_text, user_id)
                values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $preview_text . "','" . $column[4] . "','" . $column[5] . "')";
                $rows_add++;
            }

            $result = mysql_query($sqlInsert, $db_link);

            if (empty($result)) {
                echo "Ошибка импорта данных! <br>";
            }
        }
        echo "Добавлено '" . $rows_add . "' записей, обновлено '" . $rows_update . "' записей<br>";
        $rows_add = 0;
        $rows_update = 0;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload</title>
</head>
<body>
    <h1></h1>
    <form method="POST" action="" enctype="multipart/form-data">
        <input name="file" type="file" accept=".csv" />
        <button name="import" type="submit">Загрузить</button>
    </form>
</body>

</html>