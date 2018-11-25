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
{extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Your account' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <div class="row">

    <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
      <a class="links-account links-account--column links-account--big p-3" id="identity-link" href="{$urls.pages.identity}" data-icon="account_circle">
          {l s='Information' d='Shop.Theme.Customeraccount'}
      </a>
    </div>

    {if $customer.addresses|count}
      <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
        <a class="links-account links-account--column links-account--big p-3" id="addresses-link" href="{$urls.pages.addresses}" data-icon="person_pin_circle">
            {l s='Addresses' d='Shop.Theme.Customeraccount'}
        </a>
      </div>
    {else}
      <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
        <a class="links-account links-account--column links-account--big p-3" id="address-link" href="{$urls.pages.address}" data-icon="add_location">
            {l s='Add first address' d='Shop.Theme.Customeraccount'}
        </a>
      </div>
    {/if}

    {if !$configuration.is_catalog}
      <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
        <a class="links-account links-account--column links-account--big p-3" id="history-link" href="{$urls.pages.history}" data-icon="date_range">
            {l s='Order history and details' d='Shop.Theme.Customeraccount'}
        </a>
      </div>
    {/if}

    {if !$configuration.is_catalog}
      <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
        <a class="links-account links-account--column links-account--big p-3" id="order-slips-link" href="{$urls.pages.order_slip}" data-icon="receipt">
            {l s='Credit slips' d='Shop.Theme.Customeraccount'}
        </a>
      </div>
    {/if}

    {if $configuration.voucher_enabled && !$configuration.is_catalog}
      <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
        <a class="links-account links-account--column links-account--big p-3" id="discounts-link" href="{$urls.pages.discount}" data-icon="local_offer">
            {l s='Vouchers' d='Shop.Theme.Customeraccount'}
        </a>
      </div>
    {/if}

    {if $configuration.return_enabled && !$configuration.is_catalog}
      <div class="col-lg-4 col-sm-6 col-xs-12 mb-4">
        <a class="links-account links-account--column links-account--big p-3" id="returns-link" href="{$urls.pages.order_follow}" data-icon="assignment_return">
            {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
        </a>
      </div>
    {/if}

    {block name='display_customer_account'}
      {hook h='displayCustomerAccount'}
    {/block}

  </div>
{/block}


{block name='page_footer'}
  {block name='my_account_links'}
    <div class="text-sm-center">
      <a href="{$logout_url}" >
        {l s='Sign out' d='Shop.Theme.Actions'}
      </a>
    </div>
  {/block}
{/block}
