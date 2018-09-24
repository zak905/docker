FROM node:10-alpine


COPY index.js .
COPY package.json .

RUN npm install 


ENTRYPOINT [ "node", "index.js" ]