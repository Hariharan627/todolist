FROM node:latest

RUN nkdir/root/app
WORKDIR /root/app
COPY . /root/app

RUN npm install -g  serve

EXPOSE 3080 

CMD serve -s build
