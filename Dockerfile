FROM node:18.12.1
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
RUN npm config set fetch-retry-maxtimeout 120000
RUN npm install

RUN npm install cross-env -g

COPY . .
CMD ["npm", "start"]

