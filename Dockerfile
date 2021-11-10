ARG PORT=8080
# FROM node:14-alpine AS node

FROM node:14-alpine
# # Builder Stage
# FROM node as Builder

# Use /app/backend as the CWD
WORKDIR /home/node/app/backend

# copy package.json and package-lock.json to /app/backend
COPY package*.json ./

# install dependencies 
RUN npm i

# copy the rest of the code
COPY . .

# I don't have this command yet
# Invoke the build script to transpile ts code to js
# RUN npm run build 

# Open desired port
EXPOSE ${PORT}

# Run Dev server
ENTRYPOINT [ "npm", "run", "start" ]