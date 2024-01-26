FROM php:8.2-apache
# Automatically accept the End User License Agreement
ENV ACCEPT_EULA=Y
# Add external repositories securely
RUN apt-get update && apt-get install -y gnupg2
# Downloads the Microsoft repository GPG keys and adds them to the list of trusted keys.
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - 
# Adds the Microsoft SQL Server Ubuntu repository to the list of package sources
RUN curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list 
# Updates the package lists again, this time including the newly added Microsoft repository.
RUN apt-get update 
# Installs the Microsoft ODBC Driver for SQL Server (msodbcsql17) and the UnixODBC Developer Package (unixodbc-dev). 
RUN ACCEPT_EULA=Y apt-get -y --no-install-recommends install msodbcsql17 unixodbc-dev 
# This extension provides SQL Server Driver support for PHP.
RUN pecl install sqlsrv
# This extension provides a PDO (PHP Data Objects) driver for SQL Server.
RUN pecl install pdo_sqlsrv
# Enables the sqlsrv and pdo_sqlsrv PHP extensions, making them available for use by PHP scripts running in the container.
RUN docker-php-ext-enable sqlsrv pdo_sqlsrv
# Copy custom PHP script
COPY QuickDbTest.php /var/www/html/QuickDbTest.php

# Copy custom Apache configuration file into the image and then enable that configuration
COPY QuickDbTest.conf /etc/apache2/conf-available/
RUN a2enconf QuickDbTest