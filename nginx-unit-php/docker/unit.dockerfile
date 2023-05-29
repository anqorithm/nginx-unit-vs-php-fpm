FROM unit:1.30.0-php8.2	

COPY ../src/app1 /var/www/html/app1
COPY ../src/app2 /var/www/html/app2

COPY ./config.json /docker-entrypoint.d/config.json