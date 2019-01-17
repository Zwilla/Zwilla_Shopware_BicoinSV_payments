/*
 * (c) LX <lxhost.com@gmail.com>
 * (c) 2017 Miguel Padilla <miguel.padilla@zwilla.de>
 * Donations: BSV:1L81xy6FoMHpNWxFtKTKGbsz9Sye1sSpSp BTC:1kD11aS83Du87EigaCodD8HVYmurHgT6i  ETH:0x8F2E4fd2f76235f38188C2077978F3a0B278a453
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

Ext.define('Shopware.apps.PaymentBitcoinSV.view.main.Window', {
    extend: 'Enlight.app.Window',
    alias: 'widget.bitcoinsv-main-window',

    width: 1200,
    height: 500,
    layout: 'border',

    title: '{s name=window/title}BitcoinSV Payments{/s}',

    initComponent: function() {
        var me = this;

        Ext.applyIf(me, {
            items: me.getItems()
        });

        me.callParent(arguments);
    },

    getItems: function() {
        var me = this;
        return [{
            region: 'east',
            xtype: 'bitcoinsv-main-detail'
        }, {
            region: 'center',
            xtype: 'bitcoinsv-main-list'
        }];
    }
});