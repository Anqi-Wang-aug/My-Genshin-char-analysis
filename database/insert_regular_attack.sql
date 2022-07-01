USE GENSHIN

-- Insert regular attack for: Sucrose, Lisa, Babara
INSERT INTO REGULAR_ATTACK (1ST, 2ND, 3RD, 4TH, CHARGED, SKILL_ID) VALUES (41.8, 38.3, 48.1, 59.9, 150.0, 4),
		           						       (52.5, 47.6, 56.7, 72.8, 235.0, 22),
									       (47.3, 44.4, 51.3, 69.0, 208.0, 25);

SELECT * FROM REGULAR_ATTACK;
