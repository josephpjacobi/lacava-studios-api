FROM node:16-stretch

RUN npm i -g nodemon

USER node

RUN mkdir /home/node/lacava-backend

# Use /app/backend as the CWD
WORKDIR /home/node/lacava-backend

# copy package.json and package-lock.json to /app/backend
COPY --chown=node:node package-lock.json package.json ./

# install dependencies 
RUN npm ci

# copy the rest of the code
COPY --chown=node:node . .

# Run Dev server
CMD [ "nodemon", "/api/src/server.ts", "0.0.0.0", "8080"]