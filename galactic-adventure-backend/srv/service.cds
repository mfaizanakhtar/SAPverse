using { galactic as g } from '../db/schema';

// service SpaceService {
//   entity Spacefarers as projection on g.Spacefarer;
//   entity Departments as projection on g.Department;
//   entity Positions as projection on g.Position;
// }


service SpaceService {
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
    },
    Capabilities: {
      InsertRestrictions: {
        $Type: 'Capabilities.InsertRestrictionsType',
        Insertable: true
      },
      UpdateRestrictions: {
        $Type: 'Capabilities.UpdateRestrictionsType',
        Updatable: true
      },
      DeleteRestrictions: {
        $Type: 'Capabilities.DeleteRestrictionsType',
        Deletable: true
      }
    }
  )
  entity Spacefarers as projection on g.Spacefarer;
}

annotate SpaceService.Spacefarers with @(
  UI.PresentationVariant: {
        SortOrder: [{
          Property: stardustCollection,
          Descending: true
        }]
  },
  UI.HeaderInfo: {
    TypeName: 'Spacefarer',
    TypeNamePlural: 'Spacefarers',
    Title: { Value: name },
    Description: { Value: originPlanet }
  },
  Common.DraftRoot: {
      ActivationAction: 'draftActivate',
      EditAction: 'draftEdit',
      PreparationAction: 'draftPrepare',
    }
);