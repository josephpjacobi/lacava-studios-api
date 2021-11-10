ARG PORT=8080
# FROM node:14-alpine AS node

FROM node:14-alpine
# # Builder Stage
# FROM node as Builder

RUN npm i -g nodemon

# RUN mkdir /home/node/code/backend

# Use /app/backend as the CWD
WORKDIR /home/node/code/backend

# copy package.json and package-lock.json to /app/backend
COPY package*.json /home/node/code/backend

# install dependencies 
RUN npm install

# copy the rest of the code
COPY . /home/node/code/backend

# I don't have this command yet
# Invoke the build script to transpile ts code to js
# RUN npm run build 

# Open desired port
EXPOSE ${PORT}

# Run Dev server
CMD [ "nodemon", "./api/src/server.ts" ]