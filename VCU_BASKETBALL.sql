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
full_name varchar(255),
position varchar(225),
height varchar(255),
weight int(3),
class varchar(255),
birthplace varchar(255));
 
INSERT INTO Players
VALUES(12,'Jimmy Clark III', 'Guard', '6 3"',175,'Freshman', 'Covington, GA'),
(13,'Malik Crowfield', 'Guard', '6 4"',190,'Senior', 'Laplace, LA'),
(11,'KeShawn Curry', 'Guard', '6 4"',185,'Sophomore', 'Jacksonville, FL'),
(4,'Corey Douglas', 'Forward', '6 8"',220,'Junior', 'Louisville, KY'),
(2,'Marcus Exans', 'Guard', '6 3"',175,'Freshman', 'Covington, GA'),
(15,'Arnold Henderson VI', 'Guard', '5 10"',175,'Freshman', 'Mechanicsville, VA'),
(5,'Nah’Shon Hyland', 'Guard', '6 3"',165,'Freshman', 'Wilmington, DE'),
(0,'De’Riante Jenkins', 'Guard', '6 5"',190,'Senior', 'Eutawville, SC'),
(21,'Jarren McAllister', 'Guard', '6 4"',200,'Freshman', 'Wake Forest, NC'),
(14,'Marcus Santos-Silva', 'Forward', '6 7"',250,'Junior', 'Taunton, MA'),
(1,'Mike’L Simms', 'Guard', '6 5"',210,'Senior', 'Richmond, VA'),
(23,'Issac Vann', 'Forward', '6 6"',200,'Senior', 'Bridgeport, CT'),
(20,'Hason Ward', 'Forward', '6 9"',200,'Freshman', 'Bridgetown, Barbados'),
(10,'Vince Williams', 'Guard', '6 6"',210,'Sophomore', 'Toledo, OH');
 
 
 
 
 
DROP TABLE IF EXISTS Stats;
CREATE TABLE Stats
(
full_name varchar(255),
date varchar(255),
points int(3),
rebounds int(3),
minutes int(3),
assists int(3)
);
INSERT INTO 
 
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
INSERT INTO BasketballGames
VALUES('10/26/2019','Richmond,VA','Virginia St.',38,19,52,34,90,53,'VCU',7637),
('11/05/2019','Richmond,VA','St.Francis',36,22,36,36,72,58,'VCU',7637),
('11/08/2019','Richmond,VA','North Texas',21,21,28,35,59,56,'VCU',7637),
('11/13/2019','Richmond,VA','LSU',50,38,34,44,82,84,'VCU',7637),
('11/17/2019','Richmond,VA','Jacksonville St.',43,24,50,41,93,65,'VCU',7637),
('11/23/2019','Richmond,VA','Florida Gulf Coast',43,16,35,32,78,48,'VCU',7637),
('11/25/2019','Richmond,VA','Alabama St.',46,28,32,34,78,62,'VCU',7637),
('11/29/2019','Niceville,FL','Purdue',26,32,30,27,56,59,'Purdue',NULL),
('11/30/2019','Niceville,FL','Tennessee',26,37,43,35,69,72,'VCU',NULL),
('12/09/2019','Richmond,VA','Old Dominion University',28,29,28,41,69,57,'VCU',NULL),
('12/15/2019','Richmond,VA','Missouri St.',35,25,26,26,61,51,'VCU',NULL),
('12/18/2019','Charleston,SC','Charleston',28,46,38,25,76,71,'VCU',NULL),
('12/21/2019','Richmond,VA','Wichita St.',30,42,33,31,63,73,'Wichita St.',NULL),
('12/29/2019','Richmond,VA','Loyola',40,31,45,20,85,51,'VCU',NULL),
('01/02/2020','Richmond,VA','Fordham',35,25,29,21,64,46,'VCU',NULL),
('01/05/2020','Fairfax,VA','George Mason',33,22,39,37,72,59,'VCU',NULL),
('01/11/2020','Richmond,VA','Rhode Island',28,35,28,30,56,65,'VCU',NULL),
('01/14/2020','Dayton,OH','Dayton',33,38,32,41,65,79,'Dayton',NULL),
('01/18/2020','Richmond,VA','St. Bonaventure',52,24,39,39,91,63,'VCU',7637),
('01/21/2020','Philadelphia,PA','Saint Josephs',39,26,34,34,73,60,'VCU',NULL),
('01/25/2020','Philadelphia,PA','La Salle',33,24,43,41,76,65,'VCU',NULL),
('01/28/2020','Richmond,VA','Richmond',39,39,48,29,87,68,'VCU',7637),
('01/31/2020','Kingston,RI.','Rhode Island',27,49,48,38,75,87,'Rhode Island',NULL),
('02/07/2020','Richmond,VA','Davidson',35,20,38,42,73,62,'VCU',7637),
('02/12/2020','Richmond,VA','George Mason',33,30,34,42,67,72,'George Mason',7637),
('02/15/2020','Richmond,VA','Richmond',24,42,35,35,59,77,'Richmond',NULL),
('02/18/2020','Richmond,VA','Dayton',29,36,32,30,61,66,'Dayton',7637),
('02/21/2020','St. Louis,MO','Saint Louis',27,41,35,39,62,80,'Saint Louis',NULL),
('02/26/2020','Amherst,Mass','Massachusetts',33,28,19,32,52,60,'Massachusetts',NULL),
('02/29/2020','Richmond,VA','George Washington',32,28,43,23,75,51,'VCU',7637),
('03/03/2020','Richmond,VA','Duquesne',30,26,40,44,77,80,'Duquesne',7637),
('03/06/2020','Davidson,NC','Davidson',35,33,30,42,65,75,'Davidson',NULL);
 