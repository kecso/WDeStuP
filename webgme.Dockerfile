# Node 14 on an Alpine
FROM node:14-alpine

RUN apk add --update python3 py3-pip git openssh openssl-dev

# installing Python packages
RUN pip3 install webgme-bindings
RUN pip3 install jinja2
RUN pip3 install networkx
RUN pip3 install mako

WORKDIR /usr/app
ADD . /usr/app

RUN npm install  --unsafe-perm

CMD ["npm", "start"]


