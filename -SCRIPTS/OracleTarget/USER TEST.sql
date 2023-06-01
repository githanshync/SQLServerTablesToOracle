DROP USER USERTEST CASCADE;

CREATE USER USERTEST
  IDENTIFIED BY <password>
  HTTP DIGEST DISABLE
  DEFAULT TABLESPACE TBS_PRUEBAS_DATA
  TEMPORARY TABLESPACE TEMP
  PROFILE DEFAULT
  ACCOUNT UNLOCK;

-- 1 System Privilege for USERTEST 
GRANT CREATE SESSION TO USERTEST;

-- 1 Tablespace Quota for USERTEST 
ALTER USER USERTEST QUOTA 100M ON TBS_PRUEBAS_DATA;