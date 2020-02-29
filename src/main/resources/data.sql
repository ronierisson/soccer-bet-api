DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS championship;
DROP TABLE IF EXISTS team;
DROP TABLE IF EXISTS games;

CREATE TABLE country (
   id INT AUTO_INCREMENT  PRIMARY KEY,
   name VARCHAR(250) NOT NULL
);

CREATE TABLE championship (
   id INT AUTO_INCREMENT  PRIMARY KEY,
   name VARCHAR(250) NOT NULL,
   year VARCHAR(4) NOT NULL,
   country_id INT,
   FOREIGN KEY(country_id) REFERENCES country(id)
);

CREATE TABLE team (
   id INT AUTO_INCREMENT  PRIMARY KEY,
   name VARCHAR(250) NOT NULL,
   country_id INT,
   FOREIGN KEY(country_id) REFERENCES country(id)
);

CREATE TABLE games (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  date TIMESTAMP WITH TIME ZONE,
  day VARCHAR(2) NOT NULL,
  month VARCHAR(2) NOT NULL,
  year VARCHAR(4) NOT NULL,
  goal_home VARCHAR(250) DEFAULT NULL,
  goal_away VARCHAR(250) DEFAULT NULL,
  points_home VARCHAR(250) DEFAULT NULL,
  points_away VARCHAR(250) DEFAULT NULL,
  team_home_id INT,
  team_away_id INT,
  championship_id INT,
  FOREIGN KEY(team_home_id) REFERENCES team(id),
  FOREIGN KEY(team_away_id) REFERENCES team(id),
  FOREIGN KEY(championship_id) REFERENCES championship(id)
);

INSERT INTO country (id, name) VALUES (1,'Brazil');
INSERT INTO championship (id, name, year, country_id) VALUES (1,'Campeonato Brasileiro',2020,1);
INSERT INTO team (id, name, country_id) VALUES (1,'Cruzeiro',1);
INSERT INTO team (id, name, country_id) VALUES (2,'Atlético-MG',1);
INSERT INTO games (id, date, day, month, year, team_home_id, team_away_id, championship_id, goal_home, goal_away,
points_home, points_away) VALUES (1,'2020-01-01 13:00:00 +03:00','01','01','2020',1,2,1,'6','1','3','0');