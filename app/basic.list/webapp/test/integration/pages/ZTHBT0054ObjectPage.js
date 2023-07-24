sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.yokogawa.basic.list',
            componentId: 'ZTHBT0054ObjectPage',
            entitySet: 'ZTHBT0054'
        },
        CustomPageDefinitions
    );
});