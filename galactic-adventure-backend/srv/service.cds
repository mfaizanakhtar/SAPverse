using { galactic as g } from '../db/schema';

@(requires:[
  'User',
  'Admin'
])

service SpaceService {
  @(
      restrict: [
        { grant: '*', to: 'User' , where: 'originPlanet = $user.originPlanet' },
        { grant: '*', to: 'Admin' }
      ]
  )
  @(
    UI: {
      SelectionFields: ['originPlanet', 'spacesuitColor'],
      LineItem: [
        { Value: name, Label: 'Name' },
        { Value: stardustCollection, Label: 'Stardust Collection' },
        { Value: wormholeNavigationSkill, Label: 'Wormhole Navigation Skill' },
        { Value: originPlanet, Label: 'Origin Planet' },
        { Value: spacesuitColor, Label: 'Spacesuit Color' }
      ]
    }
  )
  @odata.draft.enabled
  entity Spacefarers as projection on g.Spacefarer
}

annotate SpaceService.Spacefarers with @(
  UI.PresentationVariant: {
    SortOrder: [{ Property: stardustCollection, Descending: true }]
  },
  UI.HeaderInfo: {
    TypeName: 'Spacefarer',
    TypeNamePlural: 'Spacefarers',
    Title: { Value: name },
    Description: { Value: originPlanet }
  }
);