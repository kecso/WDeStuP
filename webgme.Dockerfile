FROM node:14-slim

RUN apt-get update && apt-get install python3 python3-pip git openssh-client openssl libssl-dev -y

# installing Python packages
RUN pip3 install webgme-bindings
RUN pip3 install jinja2
RUN pip3 install networkx
RUN pip3 install mako

WORKDIR /usr/app
ADD . /usr/app

RUN npm install  --unsafe-perm

CMD ["npm", "start"]



