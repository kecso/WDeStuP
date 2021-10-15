# Node 14 on an Alpine
FROM node:14

RUN apt update
RUN apt install -y software-properties-common sudo
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install -y python3.9
RUN apt install -y python3-pip

# installing Python packages
RUN pip3 install webgme-bindings
RUN pip3 install jinja2
RUN pip3 install networkx
RUN pip3 install mako

WORKDIR /usr/app
ADD . /usr/app

RUN npm install  --unsafe-perm

CMD ["npm", "start"]


