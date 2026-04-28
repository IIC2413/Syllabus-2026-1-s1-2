# Comandos importantes de PostgreSQL

## Conectarse a Postgres

1. Por defecto para conectarse a postgres se utiliza el siguiente comando

        psql
        
    Si no funciona tratar con
    
        psql postgres
    
2. Dependiendo del usuario inicial

        psql -U usuario
    
3. Para ingresar a una base de datos específica

        psql -d nombre_db

4. Para ejecutar un archivo SQL

        psql -f archivo.sql

5. Para conectarse a un host en específico

        psql -h host.cl

6. Para especificar el port (por defecto es 5432)

        psql -p 5432

7. Se pueden combinar para que reciba más parámetros

        psql -U usuario -d nombre_db -h host.cl -f archivo.sql

## Comandos útiles en postgres

1. Para crear base de datos

        CREATE DATABASE nombre_db;

2. Para conectarse a una base de datos dentro de postgres

        \c nombre_db

3. Para ver todas las bases de datos de tu equipo 

        \l

4. Para ver las tablas de la base de datos actual

        \dt

5. Para ver los atributos que recibe y las IC de las tablas

        \d nombre_tabla

6. Para salir de postgres

        \q

7. Para crear usuarios

        CREATE USER nombre_usuario WITH PASSWORD 'contraseña';

8. Para otorgar roles en bases de datos

        GRANT ALL PRIVILEGES ON DATABASE nombre_db TO nombre_usuario;

9. Para visualizar los usuarios de tu equipo

        \du

