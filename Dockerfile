FROM node:carbon

ARG APP_HOME
WORKDIR ${APP_HOME}
COPY package*.json ./
RUN npm install
COPY . .

CMD /bin/bash -c 'npm install; npm start'
