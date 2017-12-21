# Simple docker container for a simple node js app (express)
- create `.env` file and customise as necessary (the makefile & the docker container label requires `APP_LABEL` to exist in the .env):
    ```bash
      > cp .env.dist .env
    ```

- to start, docker will build from local Dockerfile which will install dependencies in node_modules on build time:
    ```bash
      > docker-compose up --build -d
    ```
    Or if the container is already built, 
    ```bash
      > docker-compose up -d
    ```
- to stop:
    ```bash
      > docker-compose stop
    ```

## notes
no tricks, really. pretty straightforward..
