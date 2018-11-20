# Prestashop Bootstrap 4 Theme

## Add Bootstrap 4
Replace Bootstrap 4.0.0-alpha.5 to 4.1.1.

Raplace classes on files. Not finish.

Add Bootstrap visibility classes previous Bootstrap


## Slider Home full Screen
> New Hook definition: theme.yml
```
displaySlider:
    - ps_imageslider
```
> Hook called
```
/templates/layouts/layout-both-columns.tpl
```


## SwiperJS plugin Home
> New JS File: `/_dev/js/components/featured-products-slider.js`

> Init plugin: `/_dev/js/theme.js`
```
//swiper plugin
import 'swiper/dist/js/swiper.min';
import SwiperFeaturedProducts from './components/featured-products-slider';

$(document).ready(() => {
    const swiperFeaturedProducts = new SwiperFeaturedProducts();
    swiperFeaturedProducts.init();
});
```
> Front called
```
/modules/ps_featuredproducts/views/templates/hook/ps_featuredproducts.tpl
```
> https://idangero.us/swiper/


## Add Products view Mode
Button to change Grid columns / Row columns.

Save to localStorage

> New JS File: `/_dev/js/components/view-mode-products.js`

> Init plugin: `/_dev/js/theme.js`
```
//View mode grid/list products
import ViewModeProducts from './components/view-mode-products';

$(document).ready(() => {
    const viewModeProducts = new ViewModeProducts();
    viewModeProducts.init();
});
```
> Front called
```
/templates/catalog/_partials/sort-orders.tpl
```