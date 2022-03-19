# Webberry

**Template repository for the dockerized flask apps based on postgresql database.**

___
## Preparing : 

0. Clone the repo
1. Copy `env.txt` to `app/.env`
2. Change the specific fields in `app/.env`
3. Update the entrypoint.sh file permissions locally: `chmod +x app/entrypoint.sh`
4. Build the image : `docker-compose build`
4. Run the container : `docker-compose up -d`
5.  Follow outputs alive and track errors, to make continuous development: `docker logs --follow webpill-app`

## Usefull Commands

```
# Start services at background :
    $ docker-compose up -d --build
```

```
# Follow outputs alive and track errors, to make continuous development : 
    $ docker logs --follow webpill-app
```

```
# One-shot command :  
    $ docker-compose up -d --build; docker logs --follow webpill-app
```

```
# Build the image: 
    $ docker-compose build
```

```
# Once the image is built, run the container : 
    $ docker-compose up -d
```

```
# Build the new image and spin up the two containers:
    $ docker-compose up -d --build
```

```
Run the migrations:
    $ docker-compose exec webpill-app python manage.py migrate --noinput
```

```
To remove the volumes along with the containers :
    $ docker-compose down -v
```

```
Ensure the default Django tables were created: 
    $ docker-compose exec webpill-pastgres psql --username=enivicivokki_user --dbname=enivicivokki_db
    # \l
    # \c enivicivokki_db
    # \dt
    # \q
```

```
# You can check that the volume was created as well by running:
    $ docker volume inspect <bla_bla_bla>
```

```
# Run migrations manually : 
    $ docker-compose exec webpill-postgres python manage.py flush --no-input
    $ docker-compose exec webpill-postgres python manage.py migrate
```



# --------------------------------------

One-shot build and run command :
    docker-compose up -d --build; docker logs --follow webpill-app

Build the new image and spin up the two containers: 
    docker-compose up -d --build

Create the table:
    docker-compose exec webpill-app python manage.py create_db

Seed the table :
    docker-compose exec webpill-app python manage.py seed_db

You can check that the volume was created as well by running:
    docker volume inspect flask-on-docker_postgres_data

Ensure the users table was created:
    $ docker-compose exec webpill-postgres psql --username=enivicivokki_user --dbname=enivicivokki_db

To remove the volumes along with the containers. 
Then, re-build the images, run the containers, and apply the migrations.
    docker-compose down -v

Ensure the users table was created:
    $ docker-compose exec webpill-postgres psql --username=enivicivokki_user --dbname=enivicivokki_db
    # \l
    # \c enivicivokki_db
    # \dt
    # \q

    $ docker-compose exec webpill-postgres psql --username=enivicivokki_user --dbname=enivicivokki_db
    # \c hello_flask_dev
    # select * from users;
    # \q







