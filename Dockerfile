FROM node

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/kevoree/kevoree-web-editor.git /app
WORKDIR /app
RUN npm install
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g grunt-cli
EXPOSE 9090
CMD grunt serve
