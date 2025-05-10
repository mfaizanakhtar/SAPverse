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
  name: String;
  stardustCollection: Integer;
  wormholeNavigationSkill: Integer;
  originPlanet: String;
  spacesuitColor: String;

  department: Association to Department;
  position: Association to Position;
}