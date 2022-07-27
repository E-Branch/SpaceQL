CREATE TABLE SpaceAgencies (
SpaceAgencyID integer PRIMARY KEY,
Country char(20),
DateFounded date,
Name char(20),
President char(20)
);

CREATE TABLE DiscoveredLargeObjects (
	LargeObjID integer,
	Name char(20),
	Diameter integer,
	Mass char(20),
	DiscoverSpaceAgencyID integer,
	DiscoverDate date,
	PRIMARY KEY (LargeObjID),
	FOREIGN KEY (DiscoverSpaceAgencyID) REFERENCES
	SpaceAgencies(SpaceAgencyID)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE Planets ( 
    PlanetID integer,
	OrbitalPeriod integer,
	RotationalPeriod integer,
	PRIMARY KEY (PlanetID),
	FOREIGN KEY (PlanetID) REFERENCES
	DiscoveredLargeObjects(LargeObjID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Stars (
	StarID Integer,
	Composition char(20),
	PRIMARY KEY (StarID),
	FOREIGN KEY (StarID) REFERENCES
	DiscoveredLargeObjects(LargeObjID)
		ON DELETE CASCADE
    	ON UPDATE CASCADE
);

CREATE TABLE Galaxies (
	GalxID integer PRIMARY KEY,
	Name char(20),
	Diameter integer
);

CREATE TABLE SolarSystemInGalaxy (
	SolarSysID integer,
	GalxID integer NOT NULL,
	Name char(20),
	Diameter integer,
	PRIMARY KEY (SolarSysID),
	FOREIGN KEY (GalxID) REFERENCES Galaxies(GalxID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Moons (
	Name char(20),
	PlanetID integer,
	Diameter integer,
	RotationalPeriod integer,
	OrbitalPeriod
	OrbitDistance integer,
	OrbitSpeed integer,
	PRIMARY KEY (Name, PlanetID),
	FOREIGN KEY (PlanetID) REFERENCES Planets(PlanetID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Astronauts (
AstroID integer PRIMARY KEY,
Fname char(20),
Lname char(20),
DOB date
);

CREATE TABLE TechnologyLocatedAt (
TechID integer,
Name char(20),
dateCreated date,
Operational boolean,
LargeObjID integer,
OrbitDistance integer,
arrivalDate date,
PRIMARY KEY(TechID, LargeObjID),
FOREIGN KEY (LargeObjID) REFERENCES
DiscoveredLargeObjects(LargeObjID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Satellites (
SatID integer PRIMARY KEY,
Type char(20),
FOREIGN KEY (SatID) REFERENCES TechnologyLocatedAt(TechID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Telescopes (
TelID integer PRIMARY KEY,
FOREIGN KEY (TelID) REFERENCES TechnologyLocatedAt(TechID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Rovers (
RovID integer PRIMARY KEY,
FOREIGN KEY (RovID) REFERENCES TechnologyLocatedAt(TechID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE SpaceStations (
SpaceStationID integer PRIMARY KEY,
FOREIGN KEY (SpaceStationID) REFERENCES
TechnologyLocatedAt(TechID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE DiscoveredMinorObjects (
MinObjID integer PRIMARY KEY,
Name char(20),
Diameter integer,
DiscoverySpaceAgencyID integer,
DiscoveryDate date,
FOREIGN KEY (DiscoverySpaceAgencyID) REFERENCES
SpaceAgencies(SpaceAgencyID)
ON DELETE SET NULL
ON UPDATE CASCADE
);

CREATE TABLE Asteroids (
AstroidID integer,
extinctionThreat boolean,
PRIMARY KEY (AstroidID),
FOREIGN KEY (AstroidID) REFERENCES
DiscoveredMinorObjects(MinObjID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Meteors (
MeteorID integer PRIMARY KEY,
Type char(20),
FOREIGN KEY (MeteorID) REFERENCES
DiscoveredMinorObjects(MinObjID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Comets (
CometID integer PRIMARY KEY,
VisibleFromEarth boolean,
FOREIGN KEY (CometID) REFERENCES
DiscoveredMinorObjects(MinObjID)
ON DELETE CASCADE
ON UPDATE CASCADE
);


CREATE TABLE Orbit (
PlanetID integer,
StarID integer,
OrbitDist integer,
OrbitSpd integer,
PRIMARY KEY (PlanetID, StarID),
FOREIGN KEY (PlanetID) REFERENCES Planets(PlanetID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
FOREIGN KEY (StarID) REFERENCES Stars(StarID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE HasA (
PlanetID integer,
StarID integer,
SolarSysID integer,
PRIMARY KEY (PlanetID, StarID, SolarSysID),
FOREIGN KEY (PlanetID) REFERENCES Planets(PlanetID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (StarID) REFERENCES Stars(StarID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (SolarSysID) REFERENCES
SolarSystemInGalaxy(SolarSysID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE WorkFor (
AstroID integer,
SpaceAgencyID integer,
Date date,
PRIMARY KEY (AstroID, SpaceAgencyID),
FOREIGN KEY (AstroID) REFERENCES Astronauts(AstroID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (SpaceAgencyID) REFERENCES
SpaceAgencies(SpaceAgencyID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE AstronautVisitedMoon (
AstroID integer,
MoonName char(20),
Date date,
PRIMARY KEY (AstroID, MoonName),
FOREIGN KEY (AstroID) REFERENCES Astronauts(AstroID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (MoonName) REFERENCES Moons(Name)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE AstronautVisitedPlanet (
AstroID integer,
PlanetID integer,
Date date,
PRIMARY KEY (AstroID, PlanetID),
FOREIGN KEY (PlanetID) REFERENCES Planets(PlanetID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (AstroID) REFERENCES Astronauts(AstroID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Stationed (
AstroID integer,
SpaceStationID integer,
startDate date,
endDate date,
PRIMARY KEY (AstroID, SpaceStationID),
FOREIGN KEY (AstroID) REFERENCES Astronauts(AstroID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (SpaceStationID) REFERENCES
SpaceStations(SpaceStationID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Own (
SpaceAgencyID integer,
TechID integer,
PRIMARY KEY(SpaceAgencyID, TechID),
FOREIGN KEY (SpaceAgencyID) REFERENCES
SpaceAgencies(SpaceAgencyID)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (TechID) REFERENCES
TechnologyLocatedAt(TechID)
ON DELETE CASCADE
ON UPDATE CASCADE
);


CREATE TABLE PhotosFromTelescope (
filename char(30) PRIMARY KEY,
filedata VARBINARY(10),
telescopeID integer,
dateAndTime datetime,
FOREIGN KEY (TelescopeID) REFERENCES
Telescopes(TelID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
