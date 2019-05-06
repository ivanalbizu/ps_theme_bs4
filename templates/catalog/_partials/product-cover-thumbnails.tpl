{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

{*
INICIO: Vista por defecto del tema
<div class="images-container">
  {block name='product_cover'}
    <div class="product-cover">
      <img class="js-qv-product-cover" src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" style="width:100%;" itemprop="image">
      <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
        <i class="material-icons zoom-in">&#xE8FF;</i>
      </div>
    </div>
  {/block}

  {block name='product_images'}
    <div class="js-qv-mask mask">
      <ul class="product-images js-qv-product-images">
        {foreach from=$product.images item=image}
          <li class="thumb-container">
            <img
              class="thumb js-thumb {if $image.id_image == $product.cover.id_image} selected {/if}"
              data-image-medium-src="{$image.bySize.medium_default.url}"
              data-image-large-src="{$image.bySize.large_default.url}"
              src="{$image.bySize.home_default.url}"
              alt="{$image.legend}"
              title="{$image.legend}"
              width="100"
              itemprop="image"
            >
          </li>
        {/foreach}
      </ul>
    </div>
  {/block}
</div>
FIN: Vista por defecto
*}

{*
INICIO: Images Product con SwiperJS
*}
<div class="images-container">
  {block name='product_cover'}
    <div class="product-cover">
      <div class="gallery-top">
        <div class="swiper-wrapper">
          {foreach from=$product.images item=image}
          {*
          INICIO: Opción con MODAL nativo de Prestashop
          *}
          <div class="swiper-slide" data-toggle="modal" data-target="#product-modal">
            {block name='product_thumbnail'}
              <img
                itemprop="image"
                class="js-qv-product-cover"
                src = "{$image.bySize.large_default.url}"
                alt = "{$product.cover.legend}"
                data-full-size-image-url = "{$image.bySize.large_default.url}"
              >
              <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                <i class="material-icons zoom-in">&#xE8FF;</i>
              </div>
            {/block}
          </div>
          {*
          FIN: Opción con MODAL nativo de Prestashop
          *}
          {*
          INICIO: Opción con ZOOM nativo de SwiperJS
          Consideración Si se quiere usar esta opción:
            - Por defecto un sólo producto por página. (solo aplica el zoom al Slides Activo)
            - Mirar parámetro de cofiguración: "var settingsGalleryTop" en fichero "_dev/js/product.js"
            - Existen otras opciones para aplicar ZOOm más customizable: https://www.jacklmoore.com/zoom/
          <div class="swiper-slide">
            {block name='product_thumbnail'}
                <img
                  itemprop="image"
                  class="js-qv-product-cover"
                  src = "{$image.bySize.large_default.url}"
                  alt = "{$product.cover.legend}"
                  data-full-size-image-url = "{$image.bySize.large_default.url}"
                >
            {/block}
          </div>
          FIN: Opción con ZOOM nativo de SwiperJS
          *}
          {/foreach}
        </div>
      </div>
    </div>
  {/block}
  {block name='product_images'}
  <section class="featured-products mb-section-slide full-width-sm-md">
    <div class="products gallery-thumbs">
      <div class="swiper-wrapper">
        {foreach from=$product.images item=image}
          <div class="swiper-slide">
            <article class="card-product js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
              <div class="card-product__img cursor-search">
                {block name='product_thumbnail'}
                  <div class="thumb-container">
                    <img itemprop="image"
                      class="thumb js-thumb {if $image.id_image == $product.cover.id_image} selected {/if}"
                      src = "{$image.bySize.home_default.url}"
                      alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                      data-full-size-image-url = "{$image.bySize.large_default.url}"
                    >
                  </div>
                {/block}
              </div>
            </article>
          </div>
        {/foreach}
      </div>
      <div class="swiper-button-prev hidden-sm-down"></div>
      <div class="swiper-button-next hidden-sm-down"></div>
    </div>
  </section>
  {/block}

</div>
{*
FIN: Images Product con SwiperJS
*}

{hook h='displayAfterProductThumbs'}
