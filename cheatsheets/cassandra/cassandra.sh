cqlsh -u <your username> -p <your password>
copy <keyspace name>.<table name>
to '<table and data name>';

COPY <keyspace>.<table> FROM <table and data name>Login

#Login

$ cqlsh [node_ip] -u username -p password
Use Color

$ cqlsh [node_ip] -C -u username -p password

#Execute command

$ cqlsh -e ‘describe cluster’

#Execute from file

$ cqlsh -f cql_commands.cql

#Set consistency

$cqlsh> CONSISTENCY QUORUM ;

#Run commands from file

$cqlsh> SOURCE ‘/home/cjrolo/cql_commands.cql’ ;

#Capture output to file

$cqlsh> CAPTURE ‘/home/cjrolo/cql_output.cql’ ;

#Enable Tracing

$cqlsh> TRACING ONE;

#Vertical Printing of Rows

$cqlsh> EXPAND ON;

#Print tracing session

$cqlsh> SHOW SESSION 898de000-6d83-11e8-9960-3d86c0173a79;

#Create Keyspace

CREATE KEYSPACE carlos WITH replication = {‘class’: ‘SimpleStrategy’, ‘replication_factor’ : 3};

#Alter Keyspace

ALTER KEYSPACE carlos WITH replication = {‘class’: ‘SimpleStrategy’, ‘replication_factor’ : 1};

#Drop Keyspace

DROP KEYSPACE carlos;

#Create Table

CREATE TABLE carlos.foobar (
  foo int PRIMARY KEY,
  bar int
);

#Alter Table

ALTER TABLE carlos.foobar WITH compaction = { ‘class’ : ‘LeveledCompactionStrategy’} AND read_repair_chance = 0;

#Drop Table

DROP TABLE foobar;

#Create Role

CREATE ROLE admins WITH LOGIN = true AND SUPERUSER = true;

#Create User

CREATE USER carlos WITH PASSWORD ‘some_password’ NOSUPERUSER;

#Assign Role

GRANT admins TO carlos;

#Revoke Role

REVOKE admins FROM carlos;

#List Roles

LIST ROLES;

#Use Keyspace

USE carlos;

#Insert

INSERT INTO foobar (foo, bar) VALUES (0, 1);

#Insert with TTL

INSERT INTO foobar (foo, bar) VALUES (1, 2) USING TTL 3600;

#Update

UPDATE foobar SET bar = 42 WHERE foo = 1;

#Select

SELECT * FROM foobar WHERE foo=0;

#Delete

DELETE FROM foobar WHERE foo = 1;

#Full Reference

#https://cassandra.apache.org/doc/latest/cql/index.html
#https://cassandra.apache.org/doc/latest/tools/cqlsh.html