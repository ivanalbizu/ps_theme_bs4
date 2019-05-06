import Swiper from 'swiper/dist/js/swiper.min';

//Usado, hasta el momento, en Single Product y Modal QuickView Product
//Si se quisieran comportamientos/apariencia diferente, habría que crear nuevos "settings"

var settingsGalleryTop = {
  spaceBetween: 0,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  loopedSlides: 4,
  // Si se desea usar zoom nativo de SwiperJS (hay más ocpiones en la DOC del JS), descomentar y mirar observaciones en fichero templates/catalog/_partials/product-cover-thumbnails.tpl
  //zoom: {
  //  maxRatio: 1.5//Se pone este valor, por defecto es 1. Realmente lo correcto es que sea "1" para no pixelar la imagen. Lo ideal es que la imagen sea aún mayor del contendor de la imagen
  //}
}
var settingsGalleryThumbs = {
  spaceBetween: 0,
  centeredSlides: true,
  slidesPerView: 'auto',
  touchRatio: 0.2,
  slideToClickedSlide: true,
  loopedSlides: 4,
  breakpoints: {
    //<=
    576: {
      slidesPerView: 2,
      spaceBetween: 0
    },
    768: {
      slidesPerView: 3,
      spaceBetween: 0,
      touchRatio: 1
    },
    1024: {
      slidesPerView: 4,
      spaceBetween: 0
    },
    1190: {
      slidesPerView: 5,
      spaceBetween: 0
      },
    1300: {
      spaceBetween: 16
    }
  }
}
export default class SwiperThumbsProduct {
  
  init(){
    if($('.gallery-top').length > 0) {
      var galleryTop = new Swiper('.gallery-top', settingsGalleryTop);
      var galleryThumbs = new Swiper('.gallery-thumbs', settingsGalleryThumbs);
    
      galleryTop.controller.control = galleryThumbs;
      galleryThumbs.controller.control = galleryTop;
    }
  }

}