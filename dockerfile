FROM node:bullseye
ARG WORKDIR

ENV HOME=/${WORKDIR} \
    LANG=ja_JP.UTF-8

WORKDIR ${HOME}

RUN apt-get update \
    && yarn install

EXPOSE 8080
CMD ["yarn", "dev", "--host"] 