FROM node:carbon

ARG APP_HOME

WORKDIR ${APP_HOME}
COPY package*.json ./
RUN npm install
# dev requrienment to watch file changes automatically
RUN npm install -g nodemon

COPY . .

CMD /bin/bash -c 'npm install; npm start'
