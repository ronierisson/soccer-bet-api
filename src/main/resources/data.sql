INSERT INTO country (id, name) VALUES (1,'Brazil');
INSERT INTO championship (id, name, year, country_id) VALUES (1,'Campeonato Brasileiro',2020,1);
INSERT INTO team (id, name, country_id) VALUES (1,'Cruzeiro',1);
INSERT INTO team (id, name, country_id) VALUES (2,'Atlético-MG',1);
INSERT INTO games (id, date, day, month, year, team_home_id, team_away_id, championship_id, goal_home, goal_away,
points_home, points_away) VALUES (1,'2020-01-01 13:00:00 +03:00','01','01','2020',1,2,1,'6','1','3','0');