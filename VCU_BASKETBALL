DROP TABLE IF EXISTS Coach;
CREATE TABLE Coaches (
  full_name varchar(255) NOT NULL,
  team_name varchar(255)
);

DROP TABLE IF EXISTS Teams;
CREATE TABLE Teams (
  team_id int(11) NOT NULL AUTO_INCREMENT,
  team_name varchar(255),
  PRIMARY KEY (team_id)
);
DROP TABLE IF EXISTS Players;
CREATE TABLE Players(
jersey_number varchar(255) PRIMARY KEY NOT NULL,
full_name varchar(255),
class varchar(255)
);

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE Stats
(
full_name varchar(255),
date varchar(255),
points int(3),
rebounds int(3),
minutes int(3),
assists int(3)
);
CREATE TABLE BasketballGame
(
game_date int PRIMARY KEY,
opposing_team varchar(255),
FirstHalf_VCU_score int(3),
FirstHalf_opposing_team_score int(3),
SecondHalf_VCU_score int(3),
SecondHalf_opposing_team_score int(3),
FinalVCU_score int(3),
Final_opposing_team_score int(3),
Winning_team varchar(255)
);

