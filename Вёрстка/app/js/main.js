// $ - Сначала html
$(function(){

    $(".feedback__inner-list").slick({ // slick слайдер
        slidesToShow: 3,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
    });
});

window.onload = function() {
    let arrow = document.querySelectorAll(".slick-arrow");
    arrow[0].innerHTML = "";
    arrow[1].innerHTML = "";
    arrow[2].innerHTML = "";
    arrow[3].innerHTML = "";
 };
