const cds = require('@sap/cds');

module.exports = cds.service.impl(function () {
  
  this.before('CREATE', 'Spacefarers', (req) => {
    const data = req.data;
    if (data.stardustCollection < 0) {
      req.error(400, 'Stardust must be ≥ 0');
    }

    if (data.wormholeNavigationSkill < 0 || data.wormholeNavigationSkill > 100) {
      req.error(400, 'Navigation skill must be between 0 and 10');
    }

    data.stardustCollection = Math.max(data.stardustCollection, 10);
    if (data.wormholeNavigationSkill == null) {
      data.wormholeNavigationSkill = 1;
    }

    console.log('Before creation')
    console.log(req.data)
  });

  this.after('CREATE', 'Spacefarers', (spacefarer, req) => {
    const { name, originPlanet } = spacefarer;
    console.log(`name: ${name} from originPlanet: ${originPlanet}`);
  });
});
