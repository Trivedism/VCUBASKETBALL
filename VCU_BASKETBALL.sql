DROP TABLE IF EXISTS Coaches;
CREATE TABLE Coaches (
coach_id int(10) NOT NULL,
 first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
 team_name varchar(255)
);
INSERT INTO Coaches
VALUES(01,'Mike','Rhoades','VCU'),
(02,'Drew', 'Williamson','Virginia St.'),
(03, 'Rob','Krimmel','St. Francis'),
(04,'Grant', 'McCasland','North Texas'),
(05,'Will', 'Wade','LSU'),
(06,'Ray', 'Harper','Jacksonville St.'),
(07,'Michael','Fly','Florida Gulf Coast'),
(08,'Lewis', 'Jackson','Alabama St.'),
(09,'Matt', 'Painter','Purdue'),
(10,'Rick', 'Barnes','Tennessee'),
(11,'Jeff', 'Jones','Old Dominion University'),
(12,'Dana', 'Ford','Missouri St.'),
(13,'Earl', 'Grant','Charleston'),
(14,'Gregg', 'Marshall','Wichita St.'),
(15,'Porter','Moser','Loyola'),
(16,'Jeff', 'Neubauer','Fordham'),
(17,'Dave', 'Paulsen','George Mason'),
(18,'David', 'Cox','Rhode Island'),
(19,'Anthony', 'Grant','Dayton'),
(20,'Mark', 'Schmidt','St. Bonaventure'),
(21,'Billy', 'Lange','Saint Joseph’s'),
(22,'Ashley', 'Howard','La Salle'),
(23,'Chris', 'Mooney','Richmond'),
(24,'Bob', 'McKillop','Davidson'),
(25,'Travis', 'Ford','Saint Louis'),
(26,'Matt','McCall','Massachusetts'),
(27,'Jamion', 'Christian','George Washington'),
(28,'Keith', 'Dambrot','Duquesne');
 
 
DROP TABLE IF EXISTS Teams;
CREATE TABLE Teams (
 team_id int(11) NOT NULL AUTO_INCREMENT,
 team_name varchar(255),
 PRIMARY KEY (team_id)
);
INSERT INTO Teams
VALUES(101,'VCU'),
(102,'Virginia St.'),
(103,'St. Francis'),
(104,'North Texas'),
(105,'LSU'),
(106,'Jacksonville St.'),
(107,'Florida Gulf Coast'),
(108,'Alabama St.'),
(109,'Purdue'),
(110,'Tennessee'),
(111,'Old Dominion University'),
(112,'Missouri St.'),
(113,'Charleston'),
(114,'Wichita St.'),
(115,'Loyola'),
(116,'Fordham'),
(117,'George Mason'),
(118,'Rhode Island'),
(119,'Dayton'),
(120,'St. Bonaventure'),
(121,'Saint Joseph’s'),
(122,'La Salle'),
(123,'Richmond'),
(124,'Davidson'),
(125,'Saint Louis'),
(126,'Massachusetts'),
(127,'George Washington'),
(128,'Duquesne');
 
 
 
DROP TABLE IF EXISTS Players;
CREATE TABLE Players(
jersey_number varchar(255) PRIMARY KEY NOT NULL,
first_name varchar(255),
last_name varchar(255),
position varchar(225),
height varchar(255),
weight int(3),
class varchar(255),
birthplace varchar(255));
 
INSERT INTO Players
VALUES(12,'Jimmy', 'Clark III', 'Guard', '6 3"',175,'Freshman', 'Covington, GA'),
(13,'Malik', 'Crowfield', 'Guard', '6 4"',190,'Senior', 'Laplace, LA'),
(11,'KeShawn', 'Curry', 'Guard', '6 4"',185,'Sophomore', 'Jacksonville, FL'),
(4,'Corey', 'Douglas', 'Forward', '6 8"',220,'Junior', 'Louisville, KY'),
(2,'Marcus', 'Exans', 'Guard', '6 3"',175,'Freshman', 'Covington, GA'),
(15,'Arnold', 'Henderson VI', 'Guard', '5 10"',175,'Freshman', 'Mechanicsville, VA'),
(5,'Nah’Shon', 'Hyland', 'Guard', '6 3"',165,'Freshman', 'Wilmington, DE'),
(0,'De’Riante', 'Jenkins', 'Guard', '6 5"',190,'Senior', 'Eutawville, SC'),
(21,'Jarren', 'McAllister', 'Guard', '6 4"',200,'Freshman', 'Wake Forest, NC'),
(14,'Marcus', 'Santos-Silva', 'Forward', '6 7"',250,'Junior', 'Taunton, MA'),
(1,'Mike’L', 'Simms', 'Guard', '6 5"',210,'Senior', 'Richmond, VA'),
(23,'Issac', 'Vann', 'Forward', '6 6"',200,'Senior', 'Bridgeport, CT'),
(20,'Hason', 'Ward', 'Forward', '6 9"',200,'Freshman', 'Bridgetown, Barbados'),
(10,'Vince', 'Williams', 'Guard', '6 6"',210,'Sophomore', 'Toledo, OH');
 
 
 
 
 
DROP TABLE IF EXISTS VCUPlayerStats;
CREATE TABLE VCUPlayerStats
(
jersey_number int(3),
games_played int(3),
avg_minutes float(8,2),
avg_points float(8,2),
avg_rebounds float(8,2),
avg_assists float(8,2),
avg_steals float(8,2),
avg_blocks float(8,2),
avg_turnovers float(8,2),
avg_field_goal_percentage float(8,2),
avg_free_throw_percentage float(8,2),
avg_three_point_percentage float(8,2)

);
INSERT INTO VCUPlayerStats
VALUES(14,31,27.2,12.8,8.9,0.9,1.1,1.3,1.9,56.9,55.1,0.0),
(0,28,26.8,10.7,4.2,2.0,1.9,0.3,1.3,39.6,87.5,33.3),
(2,25,23.6,9.8,1.9,2.8,1.4,0.1,2.6,37.0,74.3,37.9),
(5,31,20.6,9.0,2.2,1.8,0.8,0.3,1.2,43.3,66.7,43.4),
(23,31,23.8,7.3,2.0,1.7,1.1,0.3,1.3,41.0,78.6,33.9),
(1,31,23.0,6.2,3.1,1.0,0.7,0.2,0.7,35.1,86.7,31.3),
(11,31,16.3,4.7,2.4,1.1,0.6,0.2,1.0,42.1,58.7,20.7),
(10,21,16.4,4.2,2.8,1.0,1.0,0.4,1.3,34.2,80.6,20.0),
(4,26,12.0,3.5,2.5,0.4,0.5,0.9,0.5,48.7,58.3,33.3),
(13,23,15.9,3.1,1.0,0.9,0.2,0.1,0.4,35.7,60.0,36.5),
(20,24,7.3,3.0,2.0,0.3,0.2,0.6,0.5,62.5,68.8,0.0),
(21,16,7.0,2.7,1.3,0.3,0.3,0.1,0.5,51.6,69.2,28.6),
(12,17,7.3,2.1,0.8,0.8,0.4,0.1,0.5,37.1,58.3,21.4),
(15,7,2.1,1.0,0.0,0.1,0.0,0.0,0.1,60.0,0.0,33.3);

 
 
DROP TABLE IF EXISTS BasketballGames;
CREATE TABLE BasketballGames
(
game_date varchar(255) PRIMARY KEY,
location varchar(255),
opposing_team varchar(255),
FirstHalf_VCU_score int(3),
FirstHalf_opposing_team_score int(3),
SecondHalf_VCU_score int(3),
SecondHalf_opposing_team_score int(3),
FinalVCU_score int(3),
Final_opposing_team_score int(3),
Winning_team varchar(255),
Attendance int(10)
 
);
DELIMITER //
CREATE PROCEDURE getNameByHeight(IN p_name varchar(255), OUT p_height varchar(255))
BEGIN
DECLARE v_height varchar(255);
SELECT height INTO p_height FROM players WHERE full_name = p_name;
END //
DELIMITER ;
DROP TABLE IF EXISTS BasketballGames;
CREATE TABLE BasketballGames
(
game_date varchar(255) PRIMARY KEY,
location varchar(255),
opposing_team varchar(255),
FirstHalf_VCU_score int(3),
FirstHalf_opposing_team_score int(3),
SecondHalf_VCU_score int(3),
SecondHalf_opposing_team_score int(3),
FinalVCU_score int(3),
Final_opposing_team_score int(3),
Winning_team varchar(255),
Attendance int(10),
VCU_field_goal_percentage int(3),
Opposing_field_goal_percentage int(3),
VCU_3pt int(3),
Opposing_3pt int(3),
VCU_rebounds int(3),
Opposing_rebounds int(3),
VCU_assists int(3),
Opposing_assists int(3)
);
INSERT INTO BasketballGames
VALUES('10/26/2019','Richmond,VA','Virginia St.',38,19,52,34,90,53,'VCU',7637,46,33,39,25,47,35,16,7),
('11/05/2019','Richmond,VA','St.Francis (PA.)',36,22,36,36,72,58,'VCU',7637,49,32,32,29,42,39,13,9),
('11/08/2019','Richmond,VA','North Texas',21,21,28,35,59,56,'VCU',7637,37,40,39,32,31,31,10,11),
('11/13/2019','Richmond,VA','LSU',50,38,34,44,82,84,'VCU',7637,41,51,32,41,32,39,13,9),
('11/17/2019','Richmond,VA','Jacksonville St.',43,24,50,41,93,65,'VCU',7637,58,38,42,21,36,36,23,7),
('11/23/2019','Richmond,VA','Florida Gulf Coast',43,16,35,32,78,48,'VCU',7637,37,38,30,41,42,37,16,14),
('11/25/2019','Richmond,VA','Alabama St.',46,28,32,34,78,62,'VCU',7637,47,38,54,36,33,38,13,12),
('11/29/2019','Niceville,FL','Purdue',26,32,30,27,56,59,'Purdue',NULL,44,41,18,25,24,32,6,7),
('11/30/2019','Niceville,FL','Tennessee',26,37,43,35,69,72,'VCU',NULL,39,48,47,33,28,37,10,12),
('12/09/2019','Richmond,VA','Old Dominion University',28,29,28,41,69,57,'VCU',NULL,43,41,41,13,27,36,12,5),
('12/15/2019','Richmond,VA','Missouri St.',35,25,26,26,61,51,'VCU',NULL,40,40,39,41,27,42,12,5),
('12/18/2019','Charleston,SC','Charleston',28,46,38,25,76,71,'VCU',NULL,46,47,35,50,37,29,14,10),
('12/21/2019','Richmond,VA','Wichita St.',30,42,33,31,63,73,'Wichita St.',NULL,38,42,36,21,37,42,6,15),
('12/29/2019','Richmond,VA','Loyola',40,31,45,20,85,51,'VCU',NULL,50,39,41,29,40,34,24,17),
('01/02/2020','Richmond,VA','Fordham',35,25,29,21,64,46,'VCU',NULL,43,40,32,30,32,31,19,12),
('01/05/2020','Fairfax,VA','George Mason',33,22,39,37,72,59,'VCU',NULL,45,36,35,25,40,25,13,10),
('01/11/2020','Richmond,VA','Rhode Island',28,35,28,30,56,65,'VCU',NULL,31,37,21,29,40,43,10,6),
('01/14/2020','Dayton,OH','Dayton',33,38,32,41,65,79,'Dayton',NULL,43,50,15,33,31,37,10,16),
('01/18/2020','Richmond,VA','St. Bonaventure',52,24,39,39,91,63,'VCU',7637,52,35,41,17,43,38,15,14),
('01/21/2020','Philadelphia,PA','Saint Joseph’s',39,26,34,34,73,60,'VCU',NULL,40,31,35,33,40,40,17,14),
('01/25/2020','Philadelphia,PA','La Salle',33,24,43,41,76,65,'VCU',NULL,46,41,48,40,35,37,17,17),
('01/28/2020','Richmond,VA','Richmond',39,39,48,29,87,68,'VCU',7637,49,42,48,21,38,34,14,11),
('01/31/2020','Kingston,RI.','Rhode Island',27,49,48,38,75,87,'Rhode Island',NULL,56,49,39,36,22,38,13,14),
('02/07/2020','Richmond,VA','Davidson',35,20,38,42,73,62,'VCU',7637,40,39,40,26,30,35,14,12),
('02/12/2020','Richmond,VA','George Mason',33,30,34,42,67,72,'George Mason',7637,38,44,30,40,27,48,14,13),
('02/15/2020','Richmond,VA','Richmond',24,42,35,35,59,77,'Richmond',NULL,34,50,19,50,39,40,7,17),
('02/18/2020','Richmond,VA','Dayton',29,36,32,30,61,66,'Dayton',7637,37,45,29,35,41,31,11,8),
('02/21/2020','St. Louis,MO','Saint Louis',27,41,35,39,62,80,'Saint Louis',NULL,40,57,28,44,26,41,10,21),
('02/26/2020','Amherst,Mass','Massachusetts',33,28,19,32,52,60,'Massachusetts',NULL,32,43,30,37,35,37,10,12),
('02/29/2020','Richmond,VA','George Washington',32,28,43,23,75,51,'VCU',7637,56,39,50,28,30,27,17,9),
('03/03/2020','Richmond,VA','Duquesne',30,26,40,44,77,80,'Duquesne',7637,51,47,30,34,29,40,15,14),
('03/06/2020','Davidson,NC','Davidson',35,33,30,42,65,75,'Davidson',NULL,47,49,43,44,25,29,11,16);
