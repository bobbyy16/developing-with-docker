FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/abhishek/Desktop/misc/DevOps/developing-with-docker

COPY . /home/abhishek/Desktop/misc/DevOps/developing-with-docker

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "/home/abhishek/Desktop/misc/DevOps/developing-with-docker/server.js"]
