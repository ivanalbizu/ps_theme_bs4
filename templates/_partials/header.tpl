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
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container">
        {*Versión Desktop*}
        <div class="row hidden-sm-down align-items-center">
          <div class="col-md-4 col-xs-12">
            {hook h='displayNav1'}
          </div>
          <div class="col-md-8 align-items-center right-nav">
              {hook h='displayNav2'}
          </div>
        </div>
        {*Versión Tablet y Mobile*}
        <div class="row hidden-md-up text-sm-center mobile align-items-center justify-content-between">
          <div>
            <svg class="ham hamRotate ham4 menu-ham-toggle" viewBox="0 0 100 100" width="60">
              <path
                    class="line top"
                    d="m 70,33 h -40 c 0,0 -8.5,-0.149796 -8.5,8.5 0,8.649796 8.5,8.5 8.5,8.5 h 20 v -20" />
              <path
                    class="line middle"
                    d="m 70,50 h -40" />
              <path
                    class="line bottom"
                    d="m 30,67 h 40 c 0,0 8.5,0.149796 8.5,-8.5 0,-8.649796 -8.5,-8.5 -8.5,-8.5 h -20 v 20" />
            </svg>
          </div>
          <div class="top-logo" id="_mobile_logo"></div>
          <div class="d-flex align-items-center">
            <div class="" id="_mobile_user_info"></div>
            <div class="" id="_mobile_cart"></div>
          </div>
        </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
          <a href="{$urls.base_url}">
            <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
          </a>
        </div>
        <div class="col-md-10 col-sm-12">
          <div class="row align-items-center">
            <div class="menu col-lg-8 col-md-7 js-top-menu hidden-sm-down" id="_desktop_top_menu">
              {hook h='displayTopMainMenu'}
            </div>
            <div class="col-lg-4 col-md-5 col-sm-12 search-widget">
              {hook h='displayTopSearch'}
            </div>
          </div>
        </div>
      </div>
      <div id="mobile_top_menu_wrapper" class="row hidden-md-up">
        <svg class="ham hamRotate ham4 menu-ham-toggle" viewBox="0 0 100 100" width="60">
          <path
                class="line top"
                d="m 70,33 h -40 c 0,0 -8.5,-0.149796 -8.5,8.5 0,8.649796 8.5,8.5 8.5,8.5 h 20 v -20" />
          <path
                class="line middle"
                d="m 70,50 h -40" />
          <path
                class="line bottom"
                d="m 30,67 h 40 c 0,0 8.5,0.149796 8.5,-8.5 0,-8.649796 -8.5,-8.5 -8.5,-8.5 h -20 v 20" />
        </svg>
        <a href="{$urls.base_url}">
          <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
        </a>
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
          <div id="_mobile_currency_selector"></div>
          <div id="_mobile_language_selector"></div>
          <div id="_mobile_contact_link"></div>
        </div>
      </div>
    </div>
  </div>
  {hook h='displayNavFullWidth'}
{/block}
