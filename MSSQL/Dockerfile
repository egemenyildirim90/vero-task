FROM mcr.microsoft.com/mssql/server:2022-latest
COPY ./entrypoint.sh /usr/src/entrypoint.sh
COPY ./init-db.sql /usr/src/init-db.sql
CMD ["/usr/src/entrypoint.sh"]