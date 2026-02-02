
SELECT * FROM DBA_TABLESPACES;

CREATE TABLESPACE Dev_convocatorias
    DATAFILE 'C:\Databases\Oracle\dev_convo_datos.dbf' --cambiar ruta en base a sus necesidades
    SIZE 100 M
    AUTOEXTEND ON NEXT 10 M
    MAXSIZE 500 M;

CREATE USER convocatorias IDENTIFIED BY mantequilla
DEFAULT TABLESPACE Dev_convocatorias
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON Dev_convocatorias;

GRANT DBA TO convocatorias;

SELECT * FROM DBA_USERS;
