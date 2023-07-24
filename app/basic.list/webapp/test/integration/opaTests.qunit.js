sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/yokogawa/basic/list/test/integration/FirstJourney',
		'com/yokogawa/basic/list/test/integration/pages/ZTHBT0053List',
		'com/yokogawa/basic/list/test/integration/pages/ZTHBT0053ObjectPage',
		'com/yokogawa/basic/list/test/integration/pages/ZTHBT0054ObjectPage'
    ],
    function(JourneyRunner, opaJourney, ZTHBT0053List, ZTHBT0053ObjectPage, ZTHBT0054ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/yokogawa/basic/list') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZTHBT0053List: ZTHBT0053List,
					onTheZTHBT0053ObjectPage: ZTHBT0053ObjectPage,
					onTheZTHBT0054ObjectPage: ZTHBT0054ObjectPage
                }
            },
            opaJourney.run
        );
    }
);