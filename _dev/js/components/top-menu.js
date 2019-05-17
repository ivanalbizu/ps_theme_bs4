/**
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
 */
import $ from 'jquery';
import DropDown from './drop-down';

export default class TopMenu extends DropDown {
  init() {
    let elmId;
    let self = this;
    this.el.find('li').hover((e) => {
      if (this.el.parent().hasClass('mobile')) {
        return;
      }
      if (elmId !== $(e.currentTarget).attr('id')) {
        if ($(e.target).data('depth') === 0) {
          $(`#${elmId} .js-sub-menu`).hide();
        }
        elmId = $(e.currentTarget).attr('id');
      }
      if (elmId && $(e.target).data('depth') === 0) {
        $(`#${elmId} .js-sub-menu`).show().css({
          top: $(`#${elmId}`).height() + $(`#${elmId}`).position().top
        });
      }
    });
    $('.overlay-bg, .menu-ham-toggle').on('click', function() {
      $('body').toggleClass('menu-open');
    });
    $('.js-top-menu').mouseleave(() => {
      if (this.el.parent().hasClass('mobile')) {
        return;
      }
      $(`#${elmId} .js-sub-menu`).hide();
    });
    this.el.on('click', (e) => {
      if (this.el.parent().hasClass('mobile')) {
        return;
      }
      e.stopPropagation();
    });
    prestashop.on('responsive update', function(event) {
      $('.js-sub-menu').removeAttr('style');
      self.toggleMobileMenu();
      self.closeMenuChangeOrientation();
    });
    super.init();
  }

  toggleMobileMenu() {
    if ($('body').hasClass("menu-open")) {
      $('#notifications').fadeOut(400);
      //$('#wrapper').fadeOut(400);
      //$('#footer').fadeOut(400);
      //$('body').removeClass("menu-open");
    } else {
      $('#notifications').fadeIn(300);
      //$('#wrapper').fadeIn(300);
      //$('#footer').fadeIn(300);
      //$('body').addClass("menu-open");      
    }
  }
  //Método para cerrar menú en métodos nativos: 'responsive update'
  //Sí se cambia orientación o se hace resize de pantalla y el menú está abierto, 
  // se cerrará SIEMPRE que se produczca transicón UP/DOWN de breakpoint definido en: $breakpoint-menu-responsive: 1025px; / prestashop.responsive.min_width = 1025;
  closeMenuChangeOrientation() {
    if ($('body').hasClass("menu-open")) {
      $('body').removeClass('menu-open');
    }
  }
}
