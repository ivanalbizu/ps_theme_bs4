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

{block name='social_sharing'}
  {if $social_share_links}
{*
  No es necesario esta definición si está el módulo de redes sociales habilitados
  Las references Symbols ya están definidos en el módulo comentado
  También podría usar llamando a fichero externo: assets/img/social-icons.html
    <svg width="0" height="0" class="visually-hidden social-icons">
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="youtube">
        <path d="M22.875 10.063c-2.442 5.217-8.337 12.319-12.063 12.319-3.672 0-4.203-7.831-6.208-13.043-.987-2.565-1.624-1.976-3.474-.681L.002 7.203C2.7 4.831 5.4 2.076 7.059 1.923c1.868-.179 3.018 1.098 3.448 3.832.568 3.593 1.362 9.17 2.748 9.17 1.08 0 3.741-4.424 3.878-6.006.243-2.316-1.703-2.386-3.392-1.663 2.673-8.754 13.793-7.142 9.134 2.807z"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="rss">
        <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zM12 0C8.741 0 8.333.014 7.053.072 2.695.272.273 2.69.073 7.052.014 8.333 0 8.741 0 12c0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98C8.333 23.986 8.741 24 12 24c3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98C15.668.014 15.259 0 12 0zm0 5.838a6.162 6.162 0 1 0 0 12.324 6.162 6.162 0 0 0 0-12.324zM12 16a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm6.406-11.845a1.44 1.44 0 1 0 0 2.881 1.44 1.44 0 0 0 0-2.881z"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="twitter">
        <path d="M24 4.557a9.83 9.83 0 0 1-2.828.775 4.932 4.932 0 0 0 2.165-2.724 9.864 9.864 0 0 1-3.127 1.195 4.916 4.916 0 0 0-3.594-1.555c-3.179 0-5.515 2.966-4.797 6.045A13.978 13.978 0 0 1 1.671 3.149a4.93 4.93 0 0 0 1.523 6.574 4.903 4.903 0 0 1-2.229-.616c-.054 2.281 1.581 4.415 3.949 4.89a4.935 4.935 0 0 1-2.224.084 4.928 4.928 0 0 0 4.6 3.419A9.9 9.9 0 0 1 0 19.54a13.94 13.94 0 0 0 7.548 2.212c9.142 0 14.307-7.721 13.995-14.646A10.025 10.025 0 0 0 24 4.557z"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="facebook">
        <path d="M12 0C5.373 0 0 5.372 0 12c0 5.084 3.163 9.426 7.627 11.174-.105-.949-.2-2.405.042-3.441.218-.937 1.407-5.965 1.407-5.965s-.359-.719-.359-1.782c0-1.668.967-2.914 2.171-2.914 1.023 0 1.518.769 1.518 1.69 0 1.029-.655 2.568-.994 3.995-.283 1.194.599 2.169 1.777 2.169 2.133 0 3.772-2.249 3.772-5.495 0-2.873-2.064-4.882-5.012-4.882-3.414 0-5.418 2.561-5.418 5.207 0 1.031.397 2.138.893 2.738a.36.36 0 0 1 .083.345l-.333 1.36c-.053.22-.174.267-.402.161-1.499-.698-2.436-2.889-2.436-4.649 0-3.785 2.75-7.262 7.929-7.262 4.163 0 7.398 2.967 7.398 6.931 0 4.136-2.607 7.464-6.227 7.464-1.216 0-2.359-.631-2.75-1.378l-.748 2.853c-.271 1.043-1.002 2.35-1.492 3.146C9.57 23.812 10.763 24 12 24c6.627 0 12-5.373 12-12 0-6.628-5.373-12-12-12z"
          fill-rule="evenodd" clip-rule="evenodd"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="instagram">
        <path d="M4.652 0h1.44l.988 3.702L7.996 0H9.45L7.785 5.505v3.757H6.354V5.505L4.652 0zm6.594 2.373c-1.119 0-1.861.74-1.861 1.835v3.349c0 1.204.629 1.831 1.861 1.831 1.022 0 1.826-.683 1.826-1.831V4.208c0-1.069-.797-1.835-1.826-1.835zm.531 5.127c0 .372-.19.646-.532.646-.351 0-.554-.287-.554-.646V4.321c0-.374.172-.651.529-.651.39 0 .557.269.557.651V7.5zm4.729-5.07v5.186c-.155.194-.5.512-.747.512-.271 0-.338-.186-.338-.46V2.43h-1.27v5.71c0 .675.206 1.22.887 1.22.384 0 .918-.2 1.468-.853v.754h1.27V2.43h-1.27zm2.203 13.858c-.448 0-.541.315-.541.763v.659h1.069v-.66c.001-.44-.092-.762-.528-.762zm-4.703.04a.927.927 0 0 0-.25.198v4.055c.099.106.194.182.287.229.197.1.485.107.619-.067.07-.092.105-.241.105-.449v-3.359c0-.22-.043-.386-.129-.5-.147-.193-.42-.214-.632-.107zm4.827-5.195c-2.604-.177-11.066-.177-13.666 0C2.353 11.325 2.021 13.025 2 17.5c.021 4.467.35 6.175 3.167 6.367 2.6.177 11.062.177 13.666 0 2.814-.192 3.146-1.893 3.167-6.367-.021-4.467-.35-6.175-3.167-6.367zM6.509 21.819H5.146v-7.54h-1.41v-1.28h4.182v1.28h-1.41v7.54zm4.846 0h-1.21v-.718a2.645 2.645 0 0 1-.696.605c-.652.374-1.547.365-1.547-.955v-5.438h1.209v4.988c0 .262.063.438.322.438.236 0 .564-.303.711-.487v-4.939h1.21v6.506zm4.657-1.348c0 .805-.301 1.431-1.106 1.431-.443 0-.812-.162-1.149-.583v.5h-1.221v-8.82h1.221v2.84c.273-.333.644-.608 1.076-.608.886 0 1.18.749 1.18 1.631v3.609zm4.471-1.752h-2.314v1.228c0 .488.042.91.528.91.511 0 .541-.344.541-.91v-.452h1.245v.489c0 1.253-.538 2.013-1.813 2.013-1.155 0-1.746-.842-1.746-2.013v-2.921c0-1.129.746-1.914 1.837-1.914 1.161 0 1.721.738 1.721 1.914v1.656z"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="vimeo">
        <path d="M6.503 20.752A3.25 3.25 0 0 1 3.252 24 3.25 3.25 0 0 1 0 20.752a3.25 3.25 0 0 1 3.252-3.248 3.25 3.25 0 0 1 3.251 3.248zM0 8.18v4.811c6.05.062 10.96 4.966 11.022 11.009h4.817C15.777 15.29 8.721 8.242 0 8.18zm0-3.368C10.58 4.858 19.152 13.406 19.183 24H24C23.97 10.769 13.245.046 0 0v4.812z"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="pinterest">
        <path d="M9 8H6v4h3v12h5V12h3.642L18 8h-4V6.333C14 5.378 14.192 5 15.115 5H18V0h-3.808C10.596 0 9 1.583 9 4.615V8z"></path>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="googleplus">
        <path d="M7 11v2.4h3.97c-.16 1.029-1.2 3.02-3.97 3.02-2.39 0-4.34-1.979-4.34-4.42 0-2.44 1.95-4.42 4.34-4.42 1.36 0 2.27.58 2.79 1.08l1.9-1.83C10.47 5.69 8.89 5 7 5c-3.87 0-7 3.13-7 7s3.13 7 7 7c4.04 0 6.721-2.84 6.721-6.84 0-.46-.051-.81-.111-1.16H7zm0 0l17 2h-3v3h-2v-3h-3v-2h3V8h2v3h3v2z"
          fill-rule="evenodd" clip-rule="evenodd"></path>
      </symbol>
    </svg>
*}

    <div class="social-sharing">
      <span>{l s='Share' d='Shop.Theme.Actions'}</span>
      <ul>
        {foreach from=$social_share_links item='social_share_link'}
          <li>
            <a href="{$social_share_link.url}" title="{$social_share_link.label}" target="_blank">
              <span class="sr-only">{l s='Link open new tab ' d='Shop.Theme.Global'} {$social_share_link.label}</span>
              <svg class="social-icon">
                <use xlink:href="#{$social_share_link.class}"></use>
              </svg>
            </a>
          </li>
        {/foreach}
      </ul>
    </div>
  {/if}
{/block}
