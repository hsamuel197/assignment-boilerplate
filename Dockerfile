# Use an appropriate base image based on the application stack
# Example: If it's a Node.js app, you might use the Node image.
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies (for Node.js)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on (make sure this matches the app’s config)
EXPOSE 6041

# Specify the command to run the application
CMD ["npm", "start"]
