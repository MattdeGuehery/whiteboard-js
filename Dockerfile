FROM node:lts-alpine3.9
RUN mkdir /code
ADD . /code
WORKDIR /code
RUN npm install pm2 -g
RUN npm install
CMD ["pm2-runtime", "eco"]