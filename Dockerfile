# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Expose the port your app runs on (default for Express is 3000)
EXPOSE 3000

# Set the command to start your app
CMD ["node", "src/index.js"]
