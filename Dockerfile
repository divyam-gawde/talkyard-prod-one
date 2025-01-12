# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Define the command to start your app
CMD ["npm", "start"]
