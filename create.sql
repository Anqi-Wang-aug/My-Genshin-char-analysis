CREATE DATABASE IF NOT EXISTS Genshin;

CREATE TABLE Characters (
	NAME varchar(20) NOT NULL PRIMARY KEY,
	HP int NOT NULL,
	ATK int NOT NULL,
	DEF int NOT NULL,
) 
