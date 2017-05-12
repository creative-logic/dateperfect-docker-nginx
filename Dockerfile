FROM nginx

MAINTAINER DatePerfect

RUN apt-get update && apt-get install -y \
    sudo \
    ntp \
    net-tools \
    telnet \
    git \
    curl \
    daemon 
 
RUN curl --silent --location https://deb.nodesource.com/setup_7.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
RUN apt-get update
RUN npm install -g bower -y
RUN npm install -g grunt
RUN npm install -g grunt-cli
RUN groupadd -r dateadmin && useradd -r -g dateadmin dateadmin

EXPOSE 80 
