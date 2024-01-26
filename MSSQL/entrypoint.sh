#!/bin/bash

# The image doesn't come with a predefined location for placing the .sql scripts like some other database images do. 
# Instead, we have to set up a custom process for running these scripts.

/opt/mssql/bin/sqlservr &
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -i /usr/src/init-db.sql
wait
