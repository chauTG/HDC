# Use an official Node.js runtime as a parent image
FROM node:16-alpine3.14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install --only=prod

# Copy the remaining source code to the container
COPY . .

# Expose the port the application will listen on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
