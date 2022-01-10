CREATE DATABASE IF NOT EXISTS sadb;

USE sadb;

-- IV_LEN should probably not have that default -- to be reviewed.

CREATE TABLE security_associations
(
  spi INT NOT NULL
  ,ekid MEDIUMINT NOT NULL DEFAULT spi
  ,akid MEDIUMINT NOT NULL DEFAULT spi
  ,sa_state SMALLINT NOT NULL DEFAULT 0
  ,tfvn TINYINT NOT NULL
  ,scid SMALLINT NOT NULL
  ,vcid TINYINT NOT NULL
  ,mapid TINYINT NOT NULL DEFAULT 0
  ,lpid SMALLINT
  ,est SMALLINT NOT NULL DEFAULT 0
  ,ast SMALLINT NOT NULL DEFAULT 0
  ,shivf_len SMALLINT NOT NULL DEFAULT 0
  ,shsnf_len SMALLINT NOT NULL DEFAULT 0
  ,shplf_len SMALLINT NOT NULL DEFAULT 0
  ,stmacf_len SMALLINT NOT NULL DEFAULT 0
  ,ecs_len SMALLINT NOT NULL DEFAULT 1
  ,ecs VARBINARY(4) NOT NULL DEFAULT X'00' -- ECS_SIZE=4
  ,iv_len SMALLINT NOT NULL DEFAULT 12
  ,iv VARBINARY(20) NOT NULL DEFAULT X'000000000000000000000000' -- IV_SIZE=12
  ,acs_len SMALLINT NOT NULL DEFAULT 0
  ,acs SMALLINT NOT NULL DEFAULT 0
  ,abm_len MEDIUMINT
  ,abm VARBINARY(1024) NOT NULL DEFAULT X'1111111111111111111111111111111111111111' -- ABM_SIZE=1024
  ,arc_len SMALLINT NOT NULL DEFAULT 0
  ,arc VARBINARY(20) NOT NULL DEFAULT X'0000000000000000000000000000000000000000' -- ARC_SIZE=20 , TBD why so large...
  ,arcw_len SMALLINT
  ,arcw SMALLINT NOT NULL DEFAULT 0 -- ARCW_SIZE=1
);