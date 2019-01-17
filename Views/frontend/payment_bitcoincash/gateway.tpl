/*
* (c) LX <lxhost.com@gmail.com>
* (c) 2017 Miguel Padilla <miguel.padilla@zwilla.de>
* Donations: BSV:1L81xy6FoMHpNWxFtKTKGbsz9Sye1sSpSp BTC:1kD11aS83Du87EigaCodD8HVYmurHgT6i  ETH:0x8F2E4fd2f76235f38188C2077978F3a0B278a453
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*/

{extends file='frontend/index/index.tpl'}

{block name='frontend_index_content_left'}{/block}

{* Breadcrumb *}
{block name='frontend_index_start' append}
    {$sBreadcrumb = [['name'=>"{s name=PaymentTitle}Pay with Bitcon SV (BSV){/s}"]]}
{/block}

{* Main content *}
{block name="frontend_index_content"}
    {if $receivedAddress == 'YES'}
        <h2 class="headingbox_dark largesize">{s name="UseBitcoinSVAddress"}Use BitcoinSV Address{/s}:</h2>
        <br />- {s name="Amount"}Amount{/s} : <span class="price"><strong>{$invoiceAmount} {$orderCurrency}</strong></span>
        <br />- {s name="SendExactly"}Send exactly{/s} <strong>{$valueInBSV} BSV</strong> {s name="ToThisBitcoinSVAddress"}to this BitcoinSV Address{/s}:
        <div style="padding: 5px"><a target="_blank" style="background-color: white;" href="bitcoinsv:{$bitcoinsvAddress}?amount={$valueInBSV}&label=Order%3A{$orderNumber}">{$bitcoinsvAddress}</a></div>
        <div style="padding: 5px"><a target="_blank" style="background-color: white;" href="bitcoinsv:{$bitcoinsvAddress}?amount={$valueInBSV}&label=Order%3A{$orderNumber}"><img src="https://chart.googleapis.com/chart?cht=qr&chs=200x200&chl=bitcoinsv%3A{$bitcoinsvAddress}%3Famount%3D{$valueInBSV}%26label%3DOrder%3A{$orderNumber}"></a></div>
        <br />- {s name="EmailHasBeenSent"}An email has been sent to you with this information.{/s}
        <br />- <strong>{s name="OrderWillBeSent"}Your order will be sent as soon as we receive your payment.{/s}</strong>
    {else}
        <br />- <strong>{s name="UnrecoverableErrorOccured"}An unrecoverable error occurred: unable to obtain address, check your API key or xPub.{/s}</strong>
        <br />- {$message}
        <br />- {$description}
    {/if}{/block}

{block name='frontend_index_actions'}{/block}
