# Simple docker container for a simple node js app (express)
- create `.env` file and customise as necessary (the makefile & the docker container label requires `APP_LABEL` to exist in the .env):
    ```bash
      > cp .env.dist .env
    ```

- to start, using Makefile command, run:
    ```bash
      > make start
    ```

- to stop, using Makefile command, run:
    ```bash
      > make stop
    ```
