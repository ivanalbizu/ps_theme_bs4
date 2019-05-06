import Swiper from 'swiper/dist/js/swiper.min';

export default class SwiperFeaturedProducts {
    init(){
        new Swiper('.swiper-container', {
            pagination: {
                el: '.swiper-pagination',
                type: 'bullets',
                clickable: true
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            paginationClickable: true,
            slidesPerView: 4,
            spaceBetween: 0,//por defecto el grid de productos ya tiene su sepración
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