-- CHANGE ATTACK TO REGULAR_ATTACK
USE GENSHIN;

RENAME TABLE ATTACK TO REGULAR_ATTACK;

DESCRIBE REGULAR_ATTACK;

-- CREATE ATTACK TABLE FOR CLAYMORES USERS

CREATE TABLE CLAYMORES_ATTACK (
	ID INT NOT NULL AUTO_INCREMENT,
	1ST FLOAT NOT NULL,
	2ND FLOAT NOT NULL,
	3RD FLOAT NOT NULL,
	4TH FLOAT NOT NULL,
	5TH FLOAT NOT NULL,
	CHARGED_SPINNING FLOAT NOT NULL,
	CHARGED_FINAL FLOAT NOT NULL,
	SKILL_ID INT NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (SKILL_ID) REFERENCES SKILL(SKILL_ID)
);

DESCRIBE CLAYMORES_ATTACK;

-- CREATE ATTACK TABLE FOR BOW USERS

CREATE TABLE BOW_ATTACK( 
	ID INT NOT NULL AUTO_INCREMENT,
	1ST FLOAT NOT NULL,
	2ND FLOAT NOT NULL,
	3RD FLOAT NOT NULL,
	4TH FLOAT NOT NULL,
	5TH FLOAT NOT NULL,
	AIMED FLOAT NOT NULL,
	FULLY_AIMED FLOAT NOT NULL,
	SKILL_ID INT NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (SKILL_ID) REFERENCES SKILL (SKILL_ID)
);

DESCRIBE BOW_ATTACK;

-- CREATE ATTACK TABLE FOR POLEARM USERS

CREATE TABLE POLEARM( 
	ID INT NOT NULL,
	1ST VARCHAR(10) NOT NULL,
	2ND VARCHAR(10) NOT NULL,
	3RD VARCHAR(10) NOT NULL,
	4TH VARCHAR(10) NOT NULL,
	5TH VARCHAR(10),
	6TH VARCHAR(10),
	CHARGED FLOAT NOT NULL,
	SKILL_ID INT NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (SKILL_ID) REFERENCES SKILL(SKILL_ID)
);

RENAME TABLE POLEARM TO POLEARM_ATTACK;

DESCRIBE POLEARM_ATTACK;

-- DELETE 5TH ATTACK IN REGULAR_ATTACK
ALTER TABLE REGULAR_ATTACK DROP COLUMN 5TH;

DESCRIBE REGULAR_ATTACK;
