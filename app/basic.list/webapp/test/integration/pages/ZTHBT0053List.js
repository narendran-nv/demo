sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.yokogawa.basic.list',
            componentId: 'ZTHBT0053List',
            entitySet: 'ZTHBT0053'
        },
        CustomPageDefinitions
    );
});