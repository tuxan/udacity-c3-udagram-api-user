# Use NodeJS base image
FROM node:13-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

EXPOSE $SERVER_PORT

# run api-user
CMD npm run prod