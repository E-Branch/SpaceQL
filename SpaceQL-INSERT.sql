INSERT INTO SpaceAgencies VALUES ('1','USA','1958-07-29','NASA','Bill Nelson');
INSERT INTO SpaceAgencies VALUES ('2','USA','2002-03-14','SpaceX','Elon Musk');
INSERT INTO SpaceAgencies VALUES ('3','China','1993-04-22','CNSA','Zhang Kejian');
INSERT INTO SpaceAgencies VALUES ('4','Russia','1991-12-26','ROSCOSMOS','Yury Borisov');
INSERT INTO SpaceAgencies VALUES ('5','India','1969-08-15','ISRO','Sreedhara Somanath');
INSERT INTO SpaceAgencies VALUES ('6','Italy','1998-01-01','ASI','Giorgio Saccoccia');
INSERT INTO SpaceAgencies VALUES ('7','Japan','2003-10-01','JAXA','Hiroshi Yamakawa');
INSERT INTO SpaceAgencies VALUES ('8','France','1961-12-19','CNES','Philippe Baptiste');
INSERT INTO SpaceAgencies VALUES ('9','Canada','1989-03-01','CSA','Lisa Campbell');

INSERT INTO DiscoveredLargeObjects VALUES ('0000', 'Earth', '12742', '5.972 * 10^24', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0001', 'Sun', '1392700', '1.989 * 10^30', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0002', 'Mercury', '4829', '3.285 * 10^23', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0003', 'Venus', '12104', '4.867 * 10^24', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0004', 'Mars', '6779', '6.39 * 10^23', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0005', 'Jupiter', '139820', '1.898 * 10^27', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0006', 'Saturn', '116460', '5.683 * 10^26', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0007', 'Neptune', '49244', '1.024 * 10^26', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0008', 'Pluto', '2376', '1.309 * 10^22', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0009', 'Sirius', '2400000', '4.103 * 10^30', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0010', '14 Andromedae b', '160793', '9.110 * 10^27', '1', '2008-07-02');
INSERT INTO DiscoveredLargeObjects VALUES ('0011', 'Gliese 876', '500,900', '6.643 * 10^29', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0012', 'Gliese 876 b', '166388', '2.2756 Jupiters', '1', '1998-06-22');
INSERT INTO DiscoveredLargeObjects VALUES ('0013', 'Gliese 876 c', '174778', '0.7142 Jupiters', '1', '2001-01-09');
INSERT INTO DiscoveredLargeObjects VALUES ('0014', 'Gliese 876 d','31320','6.83 Earths', '1','2005-06-13');
INSERT INTO DiscoveredLargeObjects VALUES ('0015', 'Gliese 876 e', '48938','14.6 Earths', '1', '2010-06-23');
INSERT INTO DiscoveredLargeObjects VALUES ('0016', 'Uranus', '50724', '8.681 * 10^25', NULL, NULL);
INSERT INTO DiscoveredLargeObjects VALUES ('0017', 'Proxima Centauri','214550','2.446 * 10^29',NULL,'1915-02-01');
INSERT INTO DiscoveredLargeObjects VALUES ('0018','Tau Ceti','1103400','1.557 * 10^30',NULL,NULL);

INSERT INTO Planets VALUES ('0000', '365', '24');
INSERT INTO Planets VALUES ('0002', '88', '1407');
INSERT INTO Planets VALUES ('0003', '225', '2802');
INSERT INTO Planets VALUES ('0004', '687', '24');
INSERT INTO Planets VALUES ('0005', '4380', '10');
INSERT INTO Planets VALUES ('0006', '10585', '10');
INSERT INTO Planets VALUES ('0007', '60225', '16');
INSERT INTO Planets VALUES ('0008', '90520', '153');
INSERT INTO Planets VALUES ('0010', '186', '4');
INSERT INTO Planets VALUES ('0012', '61.1', NULL);
INSERT INTO Planets VALUES ('0013', '30.1', NULL);
INSERT INTO Planets VALUES ('0014', '1.9', NULL);
INSERT INTO Planets VALUES ('0015', '124.3', NULL);
INSERT INTO Planets VALUES ('0016', '30678', '17');

INSERT INTO Stars VALUES ('0001', 'Hydrogen, Helium');
INSERT INTO Stars VALUES ('0009', 'Carbon, Oxygen');
INSERT INTO Stars VALUES ('0011', 'Hydrogen, Helium');
INSERT INTO Stars VALUES ('0017', 'Hydrogen, Helium');
INSERT INTO Stars VALUES ('0018', 'Hydrogen,Helium,Iron');

INSERT INTO Galaxies VALUES ('001','Milky Way', '105,700');
INSERT INTO Galaxies VALUES ('002', 'Andromeda', '220,000');
INSERT INTO Galaxies VALUES ('003', 'Pinwheel Galaxy', '170,000');

-- unit for solar system diameter is astronimical unit
INSERT INTO SolarSystemInGalaxy VALUES ('01','001','Our System', '79');
INSERT INTO SolarSystemInGalaxy VALUES ('02', '001', 'Proxima System', '1.489');
INSERT into SolarSystemInGalaxy VALUES ('03', '001', 'Gliese 876 System', '0.72');

-- unit for periods is days
-- earth
INSERT INTO Moons VALUES ('The Moon', '0000', '3475', '29.530589', '29.530589', '384400', '1000');
-- mars 
INSERT INTO Moons VALUES ('Phobos', '0004', '23', '0.31891023', '0.31891023', '9375', '2138');
INSERT INTO Moons VALUES ('Deimos', '0004', '12', '1.263', '1.263', '23460', '1351');
-- jupiter
INSERT INTO Moons VALUES ('Ganymede', '0005', '5268', '7.15455296', '7.15455296', '1070400', '10880');
INSERT INTO Moons VALUES ('Europa', '0005', '3122', '3.551181', '3.551181', '670900', '13743');
-- saturn
INSERT INTO Moons VALUES ('Titan', '0006', '5149', '15.945', '15.945', '1221850', '5570');
INSERT INTO Moons VALUES ('Rhea', '0006', '1528', '4.518212', '4.518212', '527040', '8480');
-- uranus
INSERT INTO Moons VALUES ('Titania', '0016', '1577', '8.706234', '8.706234', '435910', '3640');
INSERT INTO Moons VALUES ('Miranda', '0016', '472', '1.413479', '1.413479', '129390', '	6660');

INSERT INTO Astronauts VALUES ('1101', 'Neil', 'Armstrong', '1930-08-05');
INSERT INTO Astronauts VALUES ('1102', 'Buzz', 'Aldrin', '1930-01-20');
INSERT INTO Astronauts VALUES ('1103', 'Pete', 'Conrad', '1930-06-02');
INSERT INTO Astronauts VALUES ('1104', 'Alan', 'Bean', '1932-03-15');
INSERT INTO Astronauts VALUES ('1105', 'Alan', 'Shepard', '1923-11-18');
INSERT INTO Astronauts VALUES ('1106', 'Frank', 'Borman', '1928-03-14');
INSERT INTO Astronauts VALUES ('1107', 'Jim', 'Lovell', '1928-03-25');
INSERT INTO Astronauts VALUES ('1108', 'Bill', 'Anders', '1933-10-17');
INSERT INTO Astronauts VALUES ('1109', 'Tom', 'Stafford', '1930-09-17');
INSERT INTO Astronauts VALUES ('1110', 'Michael', 'Collins', '1930-10-31');
INSERT INTO Astronauts VALUES ('1111', 'Yuri', 'Gagarin', '1934-03-09');
INSERT INTO Astronauts VALUES ('1112', 'Valentina', 'Tereshkova', '1937-03-06');

-- unit for orbit distance is astronomical unit 
INSERT INTO Orbit VALUES ('0012','0011','0.2083', NULL);
INSERT INTO Orbit VALUES ('0013','0011','0.1296', NULL);
INSERT INTO Orbit VALUES ('0014','0011','0.0208', NULL);
INSERT INTO Orbit VALUES ('0015','0011','0.3343', NULL);
INSERT INTO Orbit VALUES ('0000','0001','1', '30');
INSERT INTO Orbit VALUES ('0002','0001','0.4', '47.36');
INSERT INTO Orbit VALUES ('0003','0001','0.7', '35.02');
INSERT INTO Orbit VALUES ('0004','0001','1.5','24.07');
INSERT INTO Orbit VALUES ('0005','0001','5.2','13.06');
INSERT INTO Orbit VALUES ('0006','0001','9.6','9.68');
INSERT INTO Orbit VALUES ('0007','0001','30.0','5.43');
INSERT INTO Orbit VALUES ('0016','0001','19.2','6.80');
