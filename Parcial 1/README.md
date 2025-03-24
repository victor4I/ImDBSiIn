Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7639901
Server version: 8.0.40 Source distribution
Copyright (c) 2000, 2022, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Victordan$default  |
| information_schema |
| performance_schema |
+--------------------+
3 rows in set (0.21 sec)
mysql> use Victordan$default;
Database changed
mysql> create table playffround(
    ->     id int(16) not null,
    ->     team1id int (13) Not null,
    ->     team2id int (13) not null,
    ->     starttime date not null,
    ->     endtime date not null,
    ->     roundnum int(14) not null,
    ->     primary key (id,starttime)
    -> );
Query OK, 0 rows affected, 4 warnings (0.03 sec)
mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| usuarios                    |
+-----------------------------+
5 rows in set (0.00 sec)
mysql> create table hockeygame(
    ->     id int(16) not null,
    ->     rounddld int(13) not null,
    ->     starttime int(13) not null,
    ->     team1id date not null,
    ->     team2id date not null,
    ->     primary key (id,starttime)
    -> );
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> alter table hockeygame 
    -> rename roundld
    -> to roundld int(13) not null,^C^X^C

^C
mysql> create table hockeygame(
    ->     id int(16) not null,
    ->     roundld int(13) not null,
    ->     starttime int(13) not null,
    ->     team1id date not null,
    ->     team2id date not null,
    ->     primary key (id,starttime)
    -> );
ERROR 1050 (42S01): Table 'hockeygame' already exists
mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| hockeygame                  |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| usuarios                    |
+-----------------------------+
6 rows in set (0.00 sec)

mysql> create table gamescores(
    ->     id int(16) not null,
    ->     team1score int (13) not null,
    ->     team2score int (13) not null,
    ->     primary key (id,team1score)
    -> );
Query OK, 0 rows affected, 3 warnings (0.03 sec)

mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| usuarios                    |
+-----------------------------+
7 rows in set (0.00 sec)

mysql> create table roundstats(
    ->     id int(16) not null,
    ->     numshutouts int (50) not null,
    ->     goalleaderld int (50) not null,
    ->     assistleaderld int(50) not null,
    ->     penaltyleaderld int(50) not null,
    ->     plusminusleaderld int (50) not null,
    ->     faceoffswonleaderld int (50) not null,
    ->     sogleaderld int (50) not null,
    ->     primary key (id,penaltyleaderld)
    -> );
Query OK, 0 rows affected, 8 warnings (0.03 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table roundstats(
    ->     id int(16) not null,
    ->     numshutouts int (50) not null,
    ->     goalleaderld int (50) not null,
    ->     assistleaderld int(50) not null,
    ->     penaltyleaderld int(50) not null,
    ->     plusminusleaderld int (50) not null,
    ->     faceoffswonleaderld int (50) not null,
    ->     sogleaderld int (50) not null,
    ->     primary key (id,penaltyleaderld)
    -> );
ERROR 1050 (42S01): Table 'roundstats' already exists
mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| usuarios                    |
+-----------------------------+
8 rows in set (0.00 sec)

mysql> create table hockeyteam(
    ->     id int(16) not null,
    ->     name int (50) not null,
    ->     logo int (50) not null,
    ->     primary key (id,logo)
    -> );
Query OK, 0 rows affected, 3 warnings (0.03 sec)

mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| usuarios                    |
+-----------------------------+
9 rows in set (0.00 sec)

mysql> create table hockeyteam(
    ->     ->     id int(16) not null,
    ->     ->     name int (50) not null,
    ->     ->     logo int (50) not null,
    ->     ->     primary key (id,logo)
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '->     id int(16) not null,
    ->     name int (50) not null,
    ->     logo i' at line 2
mysql> ^H^C^H^H^C

^C
mysql> ables_in_Victordan$default |
    -> +-----------------------------+
    -> | detalle_horario             |
    -> | gamescores                  |
    -> | hockeygame                  |
    -> | hockeyteam                  |
    -> | horario                     |
    -> | plantilla_detalle_horario   |
    -> | playffround                 |
    -> | roundstats                  |
    -> | usuarios                    |
    -> +-----------------------------+
    -> 9 rows in set (0.00 sec)
    -> 
    -> mysql> create table hockeyteam(
    ->     ->     ->     id int
    -> 

^C
mysql> create table hockeyteam(
    ->     id int(16) not null,
    ->     name int (50) not null,
    ->     logo int (50) not null,
    ->     primary key (id,logo)
    ->     logo int (50) not null,^C^C

^C
mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| usuarios                    |
+-----------------------------+
9 rows in set (0.00 sec)

mysql> create table hockeyteamplayer(
    ->     id int (16) not null,
    ->     hockeyteamld int (50) not null,
    ->     firstname int (50) not null,
    ->     lastname int (50) not null,
    ->     jerseynum int (50) not null,
    ->     position int (50) not null,
    ->     primary key (id,firstname)
    ->     );
Query OK, 0 rows affected, 6 warnings (0.03 sec)

mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| hockeyteamplayer            |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| usuarios                    |
+-----------------------------+
10 rows in set (0.00 sec)

mysql> create table userinfo(
    ->     id int (16) not null,
    ->     firstname varchar (50) not null,
    ->     lastname varchar (50) not null,
    ->     email varchar (50) not null,
    ->     round1points int (50) not null,
    ->     round2points int (50) not null,
    ->     round3points int (50) not null,
    ->     round4points int (50) not null,
    ->     primary key (id,round1points)
    ->     );
Query OK, 0 rows affected, 5 warnings (0.03 sec)

mysql> 
mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| hockeyteamplayer            |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| userinfo                    |
| usuarios                    |
+-----------------------------+
11 rows in set (0.00 sec)

mysql> create table user(
    ->     id int (16) not null,
    ->     username varchar (50) not null,
    ->     password varchar (50) not null,
    ->     primary key (id, username)
    -> );
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| hockeyteamplayer            |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| user                        |
| userinfo                    |
| usuarios                    |
+-----------------------------+
12 rows in set (0.00 sec)

mysql> create table userstarpicks(
    ->     id int (16) not null,
    ->     roundld int(50) not null,
    ->     goalleaderld int(50) not null,
    ->     assistleaderld int(50) not null,
    ->     penaltyleaderld int(50) not null,
    ->     plusminusleaderld int (50) not null,
    ->     faceoffswonleaderld int (50) not null,
    ->     sogleaderld int (50) not null,
    ->     numshutouts int (50) not null,
    ->     userld int (50) not null,
    ->     primary key (id,assistleaderld)
    -> );
Query OK, 0 rows affected, 10 warnings (0.03 sec)

mysql> 
mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| hockeyteamplayer            |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| user                        |
| userinfo                    |
| userstarpicks               |
| usuarios                    |
+-----------------------------+
13 rows in set (0.00 sec)

mysql> create table userscorepicks(
    ->     id int(50) not null,
    ->     hockeygameld int (50) not null,
    ->     team1score int(50) not null,
    ->     team2score int (50) not null,
    ->     userld int (50) not null,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 7
mysql> create table userscorepicks(
    ->     id int(50) not null,
    ->     hockeygameld int (50) not null,
    ->     team1score int(50) not null,
    ->     team2score int (50) not null,
    ->     userld int (50) not null,
    ->     primary key (id,team1score)
    -> );
Query OK, 0 rows affected, 5 warnings (0.03 sec)

mysql> show tables;
+-----------------------------+
| Tables_in_Victordan$default |
+-----------------------------+
| detalle_horario             |
| gamescores                  |
| hockeygame                  |
| hockeyteam                  |
| hockeyteamplayer            |
| horario                     |
| plantilla_detalle_horario   |
| playffround                 |
| roundstats                  |
| user                        |
| userinfo                    |
| userscorepicks              |
| userstarpicks               |
| usuarios                    |
+-----------------------------+
14 rows in set (0.00 sec)
