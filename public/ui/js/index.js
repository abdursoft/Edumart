function initSliders() {
    $(".hero-slider").each(function () {
        const $slider = $(this);
        const count = $slider.children().length;

        if ($slider.hasClass("slick-initialized")) return;
        $slider.not(".slick-initialized").slick({
            dots: false,
            infinite: false,
            slidesToShow: Math.min(1, count), // ðŸ”¥ IMPORTANT
            slidesToScroll: Math.min(1, count),
            accessibility: false,
            arrows: count > 1,
            prevArrow:
                '<button type="button" class="slick-prev md:h-[130px] hover:bg-[rgba(211, 54, 54, 0.4)]"><iconify-icon icon="mdi:keyboard-arrow-left" width="24" height="24"></iconify-icon></button>',
            nextArrow:
                '<button type="button" class="slick-next md:h-[130px] hover:bg-[rgba(201, 69, 69, 0.4)]"><iconify-icon icon="material-symbols:keyboard-arrow-right" width="24" height="24"></iconify-icon></button>',
        });
    });
}

window.onload = () => {
    initSliders();
}
