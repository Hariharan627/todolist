FROM node:latest

RUN mkdir /root/app
WORKDIR /root/app
COPY . /root/app

RUN npm install -g serve

EXPOSE 3080

CMD serve -s /root/app/build
