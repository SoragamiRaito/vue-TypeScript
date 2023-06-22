FROM node:slim

WORKDIR /app

RUN apt-get update && yarn install

EXPOSE 5173
CMD [ "yarn" "dev" "--host" ]