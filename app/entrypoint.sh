#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

if [ "$RUN" = "1" ]; then
#	python manage.py collectstatic --noinput
    python manage.py create_db
    python manage.py run -h 0.0.0.0
fi

exec "$@"

