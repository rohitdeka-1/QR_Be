# Use Node.js 18 alpine for a small image size
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Start the application
CMD ["npm", "start"]
