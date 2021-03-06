# Get the latest LTS (long term support) version 10 of node
FROM node:10

# Create a working dir
WORKDIR /usr/src/app

# Install application dependencies
COPY package*.json ./

# Run npm installation
RUN npm install

# Bundle application source
COPY . .

# Bind application to port 9000
EXPOSE 9000

# Define the command to run the application
CMD [ "node", "myTestServer.js" ]