#build this image from the base image
FROM node:21-alpine 

#packages needed to run the program
COPY package.json /app/
COPY src /app/

#sets the working directory for all following commands
WORKDIR /app

#commands needed to run the program
RUN npm install

#the last command in the Dockerfile
#the command that is to be executed when a docker container starts
#there can be only one CMD instruction in a Dockerfile
CMD ["node" , "server.js"]
