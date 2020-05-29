DROP TABLE "EDM"."USER_ITEMS_LOCATIONS";

CREATE TABLE "EDM"."USER_ITEMS_LOCATIONS"(
 SEQ_USER       INTEGER NOT NULL       ,
 SEQ_LOCATION   INTEGER NOT NULL UNIQUE,
 DESCRIPTION    VARCHAR(250) 
)

TABLESPACE "EDM_TS";

ALTER TABLE "EDM"."USER_ITEMS_LOCATIONS" ADD CONSTRAINT PK_ITEM_LOCATION PRIMARY KEY(SEQ_USER, SEQ_LOCATION);
ALTER TABLE "EDM"."USER_ITEMS_LOCATIONS" OWNER to "EDM";
