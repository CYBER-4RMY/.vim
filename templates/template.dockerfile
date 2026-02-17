# Set the base image
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
# RUN npm install

# Expose a port
# EXPOSE 3000

# Start the application
# CMD ["npm", "start"]
