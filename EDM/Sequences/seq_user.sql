DROP SEQUENCE "EDM"."SEQ_USER";

CREATE SEQUENCE "EDM"."SEQ_USER"
    CYCLE
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 999999999;

ALTER SEQUENCE "EDM"."SEQ_USER" OWNER TO "EDM";