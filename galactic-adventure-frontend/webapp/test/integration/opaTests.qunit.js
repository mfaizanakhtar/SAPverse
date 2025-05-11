sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'galacticadventurefrontend/test/integration/FirstJourney',
		'galacticadventurefrontend/test/integration/pages/SpacefarersList',
		'galacticadventurefrontend/test/integration/pages/SpacefarersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SpacefarersList, SpacefarersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('galacticadventurefrontend') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSpacefarersList: SpacefarersList,
					onTheSpacefarersObjectPage: SpacefarersObjectPage
                }
            },
            opaJourney.run
        );
    }
);