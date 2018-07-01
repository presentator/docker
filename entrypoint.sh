#!/bin/sh

wait_for_db () {
  until php /var/www/html/yii healthcheck/db
  do
    echo "Waiting for database connection..."

    # wait for 5 seconds before check again
    sleep 5
  done
}

if [ ! -f .initialized ]; then
    wait_for_db

    php /var/www/html/yii migrate --interactive=0

    touch .initialized
fi

exec docker-php-entrypoint "$@"
