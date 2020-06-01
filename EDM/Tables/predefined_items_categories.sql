DROP TABLE "EDM"."PREDEFINED_ITEMS_CATEGORIES";

CREATE TABLE "EDM"."PREDEFINED_ITEMS_CATEGORIES"(
 SEQ_CATEGORY   INTEGER NOT NULL,
 DESCRIPTION    VARCHAR(250) 
)

TABLESPACE "EDM_TS";

ALTER TABLE "EDM"."PREDEFINED_ITEMS_CATEGORIES" ADD CONSTRAINT PK_ITEM_CAREGORY PRIMARY KEY(SEQ_CATEGORY);
ALTER TABLE "EDM"."PREDEFINED_ITEMS_CATEGORIES" OWNER to "EDM";

DELETE FROM "EDM"."PREDEFINED_ITEMS_CATEGORIES";
INSERT INTO "EDM"."PREDEFINED_ITEMS_CATEGORIES" (SEQ_CATEGORY, DESCRIPTION) VALUES(1, 'Food');
INSERT INTO "EDM"."PREDEFINED_ITEMS_CATEGORIES" (SEQ_CATEGORY, DESCRIPTION) VALUES(2, 'Medications');
INSERT INTO "EDM"."PREDEFINED_ITEMS_CATEGORIES" (SEQ_CATEGORY, DESCRIPTION) VALUES(3, 'Cosmetics');

COMMIT;