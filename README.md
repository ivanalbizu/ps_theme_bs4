# Prestashop Bootstrap 4 Theme

## Add Bootstrap 4
Replace Bootstrap 4.0.0-alpha.5 to 4.1.1.

Raplace classes on files. Not finish.

Add Bootstrap visibility classes previous Bootstrap


## Separate Main Menu and Searchbar in new Hooks
Separate for wrapper with bootstrap classes in diferrent pages

> New Hooks definition: theme.yml
```
displayTopMainMenu:
    - ps_mainmenu
displayTopSearch:
    - ps_searchbar
```
> Hooks called
```
templates/_partials/header.tpl
templates/checkout/_partials/header.tpl
```


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


## TO-DO
Elegir un nombre para el tema

No se han actualizado todos los TPL, por lo que habrán clases del Bootstrap anterior que pueden ser eliminados (ej.: clearfix) y correcciones sobre columnas

Maquetar flechas y alturas de cajas de Swiper de productos actualmente en Home

Darle una vuelta al menú, tanto Escritorio como Responsive

Revisar dependencias de paquetes en Webpack para eliminar mensaje de Vulnerabilidad del repo

Revisar para SourceMaps SASS para que muestre en el DEV del navegador el fichero SCSS origen. Actualmente algunas llamadas de ficheros externos desde themes.scss hace siempre referencia a este fichero


Mejora: Añadir Webpack Hot Module Replacement: https://github.com/retyui/prestashop-1.7-webpack-3-hot-module-replacement para conseguir que cambios en TPL / Sass / JS el navegador refresque la página. No sé si puede generar conflictos. Conseguir esto al menos en Sass / JS puede ser muy interesante