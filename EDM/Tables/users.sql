DROP TABLE "EDM"."USERS";

CREATE TABLE "EDM"."USERS"(

  SEQ_USER          INTEGER     NOT NULL,
  USER_ID           VARCHAR(50) NOT NULL,
  USER_PASS         VARCHAR(50) NOT NULL,
  FIRST_NAME        VARCHAR(50)         ,
  LAST_NAME         VARCHAR(50)         ,
  COUNTRY           VARCHAR(3)          ,
  EMAIL             VARCHAR(50)         ,
  PHONE_NUMBER      INTEGER             ,
  DATE_CREATED      DATE                ,
  LAST_LOGIN        DATE                ,
  USER_TYPE         VARCHAR(4)          ,
  USER_STATUS       VARCHAR(1)
)

TABLESPACE "EDM_TS";

ALTER TABLE "EDM"."USERS" ADD CONSTRAINT PK_SEQ_USER PRIMARY KEY(SEQ_USER);
ALTER TABLE "EDM"."USERS" OWNER to "EDM";