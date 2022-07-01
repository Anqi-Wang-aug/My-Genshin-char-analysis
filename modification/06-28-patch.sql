-- Yanfei Elemental Burst Name modified
UPDATE SKILL SET NAME = 'Done Deal' WHERE SKILL_ID = 18;
-- Diona Elemental Burst Name modified
UPDATE SKILL SET NAME = 'Signature Mix' WHERE SKILL_ID = 30;


SELECT * FROM SKILL;

-- Update field: elemental mastery (MASTERY)
ALTER TABLE GENSHIN ADD COLUMN MASTERY INT NOT NULL AFTER DEF;

DESCRIBE GENSHIN;
