DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS championship;
DROP TABLE IF EXISTS team;
DROP TABLE IF EXISTS games;

CREATE TABLE country (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(250) NOT NULL
);

CREATE TABLE championship (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(250) NOT NULL,
   year VARCHAR(4) NOT NULL,
   country_id INT,
   FOREIGN KEY(country_id) REFERENCES country(id)
);

CREATE TABLE team (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(250) NOT NULL,
   country_id INT,
   FOREIGN KEY(country_id) REFERENCES country(id)
);

CREATE TABLE games (
  id INT PRIMARY KEY AUTO_INCREMENT,
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
