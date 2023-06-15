FROM node:slim

WORKDIR /app

RUN apt-get update && yarn install

EXPOSE 8080
CMD [ "yarn" "dev" "--host" ]