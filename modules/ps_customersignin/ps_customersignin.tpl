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
<div id="_desktop_user_info" class="">
  <div class="">
    {if $logged}
      <button 
        data-toggle="dropdown"
        aria-haspopup="true"
        aria-expanded="false"
        aria-label="{l s='User dropdown' d='Shop.Theme.Global'}"
        class="btn btn-unstyle"
        >
        <i class="material-icons">&#xE7FF;</i>
        <span class="hidden-sm-down">{$customerName}</span>
      </button>
      <ul class="dropdown-menu" aria-labelledby="user-select">
        <li>
          <a
            class="dropdown-item"
            href="{$my_account_url}"
            rel="nofollow"
          >
            {l s='View my customer account' d='Shop.Theme.Customeraccount'}
          </a>
        </li>
        <li>
          <a
            class="logout dropdown-item"
            href="{$logout_url}"
            rel="nofollow"
          >
            {l s='Sign out' d='Shop.Theme.Actions'}
          </a>
        </li>
      </ul>
    {else}
      <a
        href="{$my_account_url}"
        title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
        rel="nofollow"
      >
        <i class="material-icons">&#xE7FF;</i>
        <span class="hidden-sm-down">{l s='Sign in' d='Shop.Theme.Actions'}</span>
      </a>
    {/if}
  </div>
</div>
