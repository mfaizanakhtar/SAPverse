namespace galactic;

entity Department {
  key ID: UUID;
  name: String;
}

entity Position {
  key ID: UUID;
  title: String;
}

entity Spacefarer {
  key ID: UUID;
  @Common.Label: 'Name'
  name: String;
  stardustCollection: Integer;
  wormholeNavigationSkill: Integer;
  @Common.Label: 'Origin Planet'
  originPlanet: String;
  @Common.Label: 'Spacesuit Color'
  spacesuitColor: String;

  department: Association to Department;
  position: Association to Position;
}