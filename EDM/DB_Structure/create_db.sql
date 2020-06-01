DROP SCHEMA "EDM" CASCADE;
DROP DATABASE "EDM";
DROP TABLESPACE "EDM_TS";
DROP USER "EDM";

CREATE ROLE "EDM" WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	REPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'EDM';

  GRANT pg_execute_server_program, pg_monitor, pg_read_all_settings, pg_read_all_stats, pg_read_server_files, pg_signal_backend, pg_stat_scan_tables, pg_write_server_files TO "EDM" WITH ADMIN OPTION;

CREATE TABLESPACE "EDM_TS"
  OWNER "EDM"
  LOCATION '/Library/PostgreSQL/12/data';

ALTER TABLESPACE "EDM_TS" OWNER TO "EDM";

CREATE DATABASE "EDM"
    WITH 
    OWNER = "EDM"
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = "EDM_TS"
    CONNECTION LIMIT = -1;

GRANT ALL ON DATABASE "EDM" TO "EDM" WITH GRANT OPTION;


CREATE SCHEMA "EDM" AUTHORIZATION "EDM";

GRANT ALL ON SCHEMA "EDM" TO "EDM" WITH GRANT OPTION;

ALTER DEFAULT PRIVILEGES IN SCHEMA "EDM"
GRANT ALL ON TABLES TO "EDM" WITH GRANT OPTION;

ALTER DEFAULT PRIVILEGES IN SCHEMA "EDM"
GRANT ALL ON SEQUENCES TO "EDM" WITH GRANT OPTION;

ALTER DEFAULT PRIVILEGES IN SCHEMA "EDM"
GRANT EXECUTE ON FUNCTIONS TO "EDM" WITH GRANT OPTION;

ALTER DEFAULT PRIVILEGES IN SCHEMA "EDM"
GRANT USAGE ON TYPES TO "EDM" WITH GRANT OPTION;

