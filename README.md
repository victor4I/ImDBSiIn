Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7037998
Server version: 8.0.40 Source distribution

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> data base;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'data base' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Victordan$default  |
| information_schema |
| performance_schema |
+--------------------+
3 rows in set (1.03 sec)

mysql> 
mysql> use Victordan$default; 
Database changed
mysql> show tables
    -> show tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show tables' at line 2
mysql> show tables
    -> ;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| horario                     |
| plantilla_detalle_horario   |
+-----------------------------+
3 rows in set (0.01 sec)

mysql> DESC detalle_horario;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| horario_id         | int         | NO   | PRI | NULL    |       |
| hora_salida        | date        | NO   | PRI | NULL    |       |
| hora_entrada       | date        | NO   |     | NULL    |       |
| codigo_incapacidad | varchar(25) | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> +--------------------+-------------+------+-----+---------+-------+
    -> | Field              | Type        | Null | Key | Default | Extra |
    -> +--------------------+-------------+------+-----+---------+-------+
    -> | horario_id         | int         | NO   | PRI | NULL    |       |
    -> | hora_salida        | date        | NO   | PRI | NULL    |       |
    -> | hora_entrada       | date        | NO   |     | NULL    |       |
    -> | codigo_incapacidad | varchar(25) | YES  |     | NULL    |       |
    -> +--------------------+-------------+------+-----+---------+-------+
    -> 4 rows in set (0.01 sec)
    -> mysql> DESC horario
    ->     -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+--------------------+-------------+------+-----+---------+-------+
| Field     ' at line 1
mysql> +--------------+------+------+-----+---------+----------------+
    -> | Field        | Type | Null | Key | Default | Extra          |
    -> +--------------+------+------+-----+---------+----------------+
    -> | horario_id   | int  | NO   | PRI | NULL    | auto_increment |
    -> | plantilla_id | int  | YES  |     | NULL    |                |
    -> +--------------+------+------+-----+---------+----------------+
    -> 2 rows in set (0.00 sec)
    -> 
    -> mysql> DESC plantilla_detalle_horario;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+--------------+------+------+-----+---------+----------------+
| Field        |' at line 1
mysql> +--------------------+-------------+------+-----+---------+-------+
    -> | Field              | Type        | Null | Key | Default | Extra |
    -> +--------------------+-------------+------+-----+---------+-------+
    -> | plantilla_id       | int         | NO   | PRI | NULL    |       |
    -> | dia                | int         | NO   | PRI | NULL    |       |
    -> | codigo_incapacidad | varchar(25) | YES  |     | NULL    |       |
    -> | turno              | varchar(25) | YES  |     | NULL    |       |
    -> +--------------------+-------------+------+-----+---------+-------+
    -> 4 rows in set (0.01 sec)
    -> 
    -> mysql> SELECT * from datella_horario;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+--------------------+-------------+------+-----+---------+-------+
| Field     ' at line 1
mysql> ERROR 1146 (42S02): Table 'PEPEPROMAX$default.datella_horario' doesn't exist
    '> mysql> Select * from horario;
    '> +------------+--------------+
    '> | horario_id | plantilla_id |
    '> +------------+--------------+
    '> |          1 |            5 |
    '> |          2 |            1 |
    '> |          3 |            3 |
    '> |          4 |            2 |
    '> |          5 |            4 |
    '> +------------+--------------+
    '> 5 rows in set (0.00 sec)
    '> 
    '> mysql> select * from detalle_horario;
    '> Empty set (0.00 sec)
    '> 
    '> mysql> selec * from plantilla_detalle_horario; 
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selec * from plantilla_detalle_horario' at line 1
    '> mysql> select * from plantilla_detalle_horario;
    '> +--------------+-----+--------------------+--------+
    '> | plantilla_id | dia | codigo_incapacidad | turno  |
    '> +--------------+-----+--------------------+--------+
    '> |            1 |   1 | NULL               | 1/10   |
    '> |            1 |   2 | NULL               | 1/11,5 |
    '> |            1 |   3 | NULL               | 1/10   |
    '> |            1 |   4 | NULL               | 1/11,5 |
    '> |            1 |   5 | NULL               | 1/10   |
    '> |            1 |   6 | vacaciones         | NULL   |
    '> |            1 |   7 | vacaciones         | NULL   |
    '> |            2 |   1 | NULL               | 2/11,5 |
    '> |            2 |   2 | NULL               | 1/11,5 |
    '> |            2 |   3 | NULL               | 2/11,5 |
    '> |            2 |   4 | NULL               | 1|11.5 |
    '> |            2 |   5 | NULL               | 1/11,5 |
    '> |            2 |   6 | vacaciones         | NULL   |
    '> |            2 |   7 | vacaciones         | NULL   |
    '> |            3 |   1 | NULL               | 1#8    |
    '> |            3 |   2 | NULL               | 1.0    |
    '> |            3 |   3 | viaje_negocios     | NULL   |
    '> +--------------+-----+--------------------+--------+
    '> 17 rows in set (0.00 sec)
    '> 
    '> mysql> Insert into plantilla_detalle_horario (plantilla_id,  dia ) values ( 5, 2);
    '> Query OK, 1 row affected (0.02 sec)
    '> 
    '> mysql> Insert into plantilla_detalle_horario ( codigo_incapacidad , turno) values (2 ,4 );
    '> Query OK, 1 row affected, 2 warnings (0.01 sec)
    '> 
    '> mysql> select * from detalle_horario;
    '> select * from detalle_horario;
    '> Empty set (0.00 sec)
    '> 
    '> mysql> insert into detalle_horario ( Field ,  Type , Null , Key , Default ) values (4 , 2 , 5 , 1);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the righ
t syntax to use near 'Null , Key , Default ) values (4 , 2 , 5 , 1)' at line 1
    '> mysql> insert into detalle_horario ( Field ,  Type , Null , Key , Default ) values (4 , 2 );
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the righ
t syntax to use near 'Null , Key , Default ) values (4 , 2 )' at line 1
    '> mysql>  
    '> mysql>  CREATE TABLE usuarios (
    '>     ->   
    '>     ->   nombre varchar(25) DEFAULT NULL,
    '>     ->   apellido varchar(26) DEFAULT NULL,
    '>     ->    Departamento varchar(28) DEFAULT NULL
    '>     -> );
    '> Query OK, 0 rows affected (0.04 sec)
    '> 
    '> mysql> show tables
    '>     -> ;
    '> +------------------------------+
    '> | Tables_in_PEPEPROMAX$default |
    '> +------------------------------+
    '> | detalle_horario              |
    '> | horario                      |
    '> | plantilla_detalle_horario    |
    '> | usuarios                     |
    '> +------------------------------+
    '> 4 rows in set (0.00 sec)
    '> 
    '> mysql>  CREATE TABLE usuarios (
    '>     ->   
    '>     ->   nombre varchar(25) DEFAULT NULL,
    '>     ->   apellido varchar(26) DEFAULT NULL,
    '>     ->    Departamento varchar(28) DEFAULT NULL
    '>     -> );
    '> ERROR 1050 (42S01): Table 'usuarios' already exists
    '> mysql> show tables
    '>     -> ;
    '> +------------------------------+
    '> | Tables_in_PEPEPROMAX$default |
    '> +------------------------------+
    '> | detalle_horario              |
    '> | horario                      |
    '> | plantilla_detalle_horario    |
    '> | usuarios                     |
    '> +------------------------------+
    '> 4 rows in set (0.00 sec)
    '> 
    '> mysql> show tables usuarios ;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'usuarios' at line 1
    '> mysql> insert into usuarios ( nombre , apellido , Departamento ) values ( 5 , 2 );
    '> ERROR 1136 (21S01): Column count doesn't match value count at row 1
    -> mysql> insert into  Tables_in_PEPEPROMAX$default ( nombre , apellido , Departamento ) values ( 5 , 2 );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'PEPEPROMAX$default.datella_horario' doesn't exist
mys' at line 1
mysql> ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' doesn't exist
    '> mysql> insert into  Tables_in_PEPEPROMAX$default ( detalle_horario , horario , plantilla_detalle_horario , usuarios ) values
    '> ( 5 , 2 );
    '> ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' doesn't exist
    -> mysql> insert into  Tables_in_PEPEPROMAX$default ( detalle_horario , horario , plantilla_detalle_horario , usuarios ) values
    -> (  );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' does' at line 1
mysql> ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' doesn't exist
    '> mysql> insert into  Tables_in_PEPEPROMAX$default ( detalle_horario , horario , plantilla_detalle_horario , usuarios ) values
    '> ( 8 );
    '> ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' doesn't exist
    -> mysql> insert into  Tables_in_PEPEPROMAX$default ( detalle_horario , horario , plantilla_detalle_horario , usuarios ) values
    -> ( 8 );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' does' at line 1
mysql> ERROR 1146 (42S02): Table 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' doesn't exist
    '> mysql> select * from usuarios;
    '> Empty set (0.00 sec)
    '> 
    '> mysql> insert into usuarios ( nombre , apellido , Departamento ) values ( 'Pablo' , 'Perez', 'RH' ), ('juan' , 'gonzales' , 'FR');
    '> Query OK, 2 rows affected (0.01 sec)
    '> Records: 2  Duplicates: 0  Warnings: 0
    '> 
    '> mysql> insert into usuarios ( nombre , apellido , Departamento ) values ( 'Pablo' , 'Perez', 'RH' ), ('juan' , 'gonzales' , 'FR')
    '>     -> ;
    '> Query OK, 2 rows affected (0.01 sec)
    '> Records: 2  Duplicates: 0  Warnings: 0
    '> 
    '> mysql>  insert into usuarios ( nombre , apellido , Departamento ) values ( 'Arturo' , 'Sanches', 'DR' ), ('Antonio' , 'Barrientos' , 'JD'),('Julian' , 'Sandobal' 'FZ'), ('Jutierres', 'Dias', 'FG'), ('Jone' , 'Manstron', 'RDR'),('Andres','Fuentes','TY'),('Victor','Herrera','UI'),('Arenita','Mejilla','RT')
    '>     -> ;
    '> ERROR 1136 (21S01): Column count doesn't match value count at row 3
    -> mysql> insertar en usuarios ( nombre , apellido , Departamento ) valores ( 'Arturo' , 'Sanches', 'DR' ), ('Antonio' ​​, 'Barrientos' ,'JD'),('Julian' , 'Sandobal' 'FZ'), ('Jutierres', 'Dias', 'FG'), ('Jone' , 'Manstron', 'RDR'),('Andres','Fuentes','TY'),('Victor','Herrera','UI'),('Arenita','Mejilla','RT');
ERROR 1064 (42000): Tiene un error en su sintaxis SQL; consulte el manual que corresponde a la versión de su servidor MySQL para obtener la sintaxis correcta.x para usar cerca de 'ERROR 1146 (42S02): La tabla 'PEPEPROMAX$default.Tables_in_PEPEPROMAX$default' funciona' en la línea 1
mysql> ERROR 1136 (21S01): El recuento de columnas no coincide con el recuento de valores en la fila 3
    '> mysql> insertar en usuarios ( nombre , apellido , Departamento ) valores ( 'Arturo' , 'Sanches', 'DR' ), ('Antonio' ​​, 'Barrientos' ,'JD'),('Julian' , 'Sandobal' 'FZ'), ('Jutierres', 'Dias', 'FG'), ('Jone' , 'Manstron', 'RDR'),('Andres','Fuentes','y'),('Victor','Herrera','UI'),('Arenita','Mejilla','RT');
    ERROR 1136 (21S01): El recuento de columnas no coincide con el recuento de valores en la fila 3
    -> mysql> insertar en usuarios ( nombre , apellido , Departamento ) valores ( 'Arturo' , 'Sanches', 'DR' ), ('Antonio' ​​, 'Barrientos' ,'JD'),('Julian' , 'Sandobal' 'FZ'), ('Jutierres', 'Dias', 'FG'), ('Jone' , 'Manstron', 'RDR'),('Andres','Fuentes','TY'),('Victor','Herrera','UI'),('Arenita','Mejilla','RT')
    -> -> ;
ERROR 1064 (42000): Tiene un error en su sintaxis SQL; consulte el manual que corresponde a la versión de su servidor MySQL para obtener la sintaxis correcta.x para usar cerca de 'ERROR 1136 (21S01): el recuento de columnas no coincide con el recuento de valores en la fila 3
mysql> inse' en la línea 1
mysql> ERROR 1136 (21S01): El recuento de columnas no coincide con el recuento de valores en la fila 3
    >mysql>
    >mysql>
    >mysql>
    '> mysql> insertar valores en usuarios ( nombre , apellido , Departamento )
    '> -> ('Arturo', 'Sanches', 'DR'),
    '> -> ('Antonio' ​​, 'Barrientos' , 'JD'),
    '> -> ('Julián' , 'Sandobal' 'FZ'),
    '> -> ('Jutierres', 'Días', 'FG'),
    '> -> ('Jone', 'Manstron', 'RDR'),
    '> -> ('Andrés','Fuentes','TY'),
    '> -> ('Víctor','Herrera','UI'),
    '> -> ('Arenita','Mejilla','RT');
    ERROR 1136 (21S01): El recuento de columnas no coincide con el recuento de valores en la fila 3
    ->mysql>
    -> mysql> insertar valores en usuarios ( nombre , apellido , Departamento )
    -> -> ('Arturo', 'Sanches', 'DR'),
    -> -> ('Antonio' ​​, 'Barrientos' , 'JD'),
    -> -> ('Julián', 'Sandobal', 'FZ'),
    -> -> ('Jutierres', 'Días', 'FG'),
    -> -> ('Jone', 'Manstron', 'RDR'),
    -> -> ('Andrés','Fuentes','TY'),
    -> -> ('Víctor','Herrera','UI'),
    ->     ->     ('Arenita','Mejilla','RT');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1136 (21S01): Column count doesn't match value count at row 3
mysql> 
mysq' at line 1
mysql> Query OK, 8 rows affected (0.01 sec)
    -> Records: 8  Duplicates: 0  Warnings: 0
