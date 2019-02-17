Presentator docker-compose production example set-up
======================================================================

Here you can find an example `docker-compose.yml` configuration that makes use of [Presentator Docker image](https://github.com/ganigeorgiev/presentator-docker).

The set-up contains the following containers:

- **`jwilder/nginx-proxy`** - reverse proxy for easier vhosts management
- **`mariadb`** - MariaDB v10 database
- **`presentator`** - the application itself


## Quick start

**NB!** For simplicity the code below is using [docker-compose](https://docs.docker.com/compose/), but if you prefer you could use [docker stack deploy](https://docs.docker.com/engine/reference/commandline/stack_deploy/) + [docker swarm](https://docs.docker.com/engine/swarm/).

1. SSH login to you machine and clone the example directory files.

2. Update `mariadb` and `presentator` environment variables in the `docker-compose.yml` file. 

3. Update the following configuration files according to your settings:
    
    - `vhosts.conf` 
    - `params-local.php`
    - `main-local.php`

4. Open a terminal and run `docker-compose up -d`

That's it! You should be able to access the specified vhosts in your browser.

> A more detailed instructions about how to run the setup on vps hostings like DigitalOcean or Vultr is coming soon.
