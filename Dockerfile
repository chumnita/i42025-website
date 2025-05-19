FROM jenkins/jenkins:lts

USER root

# Install PHP, Composer, SQLite driver, Node.js, etc.
RUN apt-get update && apt-get install -y \
    php-cli php-xml php-mbstring php-curl php-sqlite3 unzip curl git nodejs npm \
 && curl -sS https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer

USER jenkins
