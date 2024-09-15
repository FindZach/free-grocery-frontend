# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Angular application for production with SSR
RUN npm serve:ssr:free-grocery-frontend

# Expose the port the app runs on
EXPOSE 4545

# Start the server
CMD ["node", "dist/free-grocery-frontend/server/main.js"]
