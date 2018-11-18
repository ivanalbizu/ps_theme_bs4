export default class SwiperFeaturedProducts {
    init(){
        new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            slidesPerView: 4,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            spaceBetween: 0,//por defecto el grid de productos ya tiene su sepración
            grabCursor: true,
            breakpoints: {
                1190: {
                    slidesPerView: 3,
                    //spaceBetween: 15
                },
                1024: {
                    slidesPerView: 3,
                    //spaceBetween: 15
                },
                768: {
                    slidesPerView: 2,
                    //spaceBetween: 10
                },
                640: {
                    slidesPerView: 1,
                    //spaceBetween: 10
                },
                320: {
                    slidesPerView: 1,
                    //spaceBetween: 5
                }
            }
        });
    }
}