sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.yokogawa.basic.list',
            componentId: 'ZTHBT0053ObjectPage',
            entitySet: 'ZTHBT0053'
        },
        CustomPageDefinitions
    );
});