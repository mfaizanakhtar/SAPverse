using { galactic as g } from '../db/schema';

service SpaceService {
  entity Spacefarers as projection on g.Spacefarer;
  entity Departments as projection on g.Department;
  entity Positions as projection on g.Position;
}
