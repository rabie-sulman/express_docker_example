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
- for development, `nodemon` is installed and is run on start script in `package.json`. In prod, 
    ```bash
    RUN npm install -g nodemon
    ``` 
   in the `Dockerfile` can be removed. Also,  the start script can be changed to: 
   
    ```json 
    "scripts": {
        "start": "nodemon -L server.js"
      },
    ```
     
otherwise, no tricks, really. pretty straightforward..
