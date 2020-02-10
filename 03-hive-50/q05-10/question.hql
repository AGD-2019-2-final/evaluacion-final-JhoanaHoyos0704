-- 
-- Pregunta
-- ===========================================================================
--
-- Realice una consulta que compute la cantidad de veces que aparece cada valor 
-- de la columna `t0.c5`  por año.
--
-- Escriba el resultado a la carpeta `output` de directorio de trabajo.
--
DROP TABLE IF EXISTS tbl0;
CREATE TABLE tbl0 (
    c1 INT,
    c2 STRING,
    c3 INT,
    c4 DATE,
    c5 ARRAY<CHAR(1)>, 
    c6 MAP<STRING, INT>
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
COLLECTION ITEMS TERMINATED BY ':'
MAP KEYS TERMINATED BY '#'
LINES TERMINATED BY '\n';
LOAD DATA LOCAL INPATH 'tbl0.csv' INTO TABLE tbl0;
--
DROP TABLE IF EXISTS tbl1;
CREATE TABLE tbl1 (
    c1 INT,
    c2 INT,
    c3 STRING,
    c4 MAP<STRING, INT>
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
COLLECTION ITEMS TERMINATED BY ':'
MAP KEYS TERMINATED BY '#'
LINES TERMINATED BY '\n';
LOAD DATA LOCAL INPATH 'tbl1.csv' INTO TABLE tbl1;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

DROP TABLE IF EXISTS unionTable;
CREATE TABLE unionTable 
AS 
    SELECT c4,c5[0] AS c5
    FROM tbl0;

Insert into unionTable (SELECT c4,c5[1] FROM tbl0);

Insert into unionTable (SELECT c4,c5[2] FROM tbl0);

Insert into unionTable (SELECT c4,c5[3] FROM tbl0);

Insert into unionTable (SELECT c4,c5[4] FROM tbl0);


INSERT OVERWRITE LOCAL DIRECTORY 'output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE


SELECT Year(Date(c4,'yyyy-MM-dd')), c5, COUNT(c5) FROM unionTable WHERE c5 IS NOT NULL GROUP BY Year(Date(c4,'yyyy-MM-dd')), c5;
