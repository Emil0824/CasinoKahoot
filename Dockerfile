# Use the official Node.js image
FROM node:18

# Set the working directory
WORKDIR /

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Command to run the application
CMD ["node", "."]