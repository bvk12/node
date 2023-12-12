# Use an official Node.js runtime as a base image
FROM node:14

#EXPOSE 8080
#ENV PORT 8080
#ENV HOST 0.0.0.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Build the Next.js application
RUN npm run 

# Expose the port on which the app will run
#EXPOSE 8080

# Define the command to run your application
CMD ["npm", "start"]