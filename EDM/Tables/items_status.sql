DROP TABLE "EDM"."ITEMS_STATUS";

CREATE TABLE "EDM"."ITEMS_STATUS"(

  STATUS       VARCHAR(1) NOT NULL,
  DESCRIPTION  VARCHAR(50)

)
TABLESPACE "EDM_TS";

ALTER TABLE "EDM"."ITEMS_STATUS" ADD CONSTRAINT PK_ITEMS_STATUS PRIMARY KEY(STATUS);
ALTER TABLE "EDM"."ITEMS_STATUS" OWNER to "EDM";

DELETE FROM "EDM"."ITEMS_STATUS" WHERE STATUS IN ('A','E','S');
INSERT INTO "EDM"."ITEMS_STATUS" (STATUS, DESCRIPTION) VALUES('A', 'Active');
INSERT INTO "EDM"."ITEMS_STATUS" (STATUS, DESCRIPTION) VALUES('E', 'Expired');
INSERT INTO "EDM"."ITEMS_STATUS" (STATUS, DESCRIPTION) VALUES('S', 'Expiring soon');

COMMIT;