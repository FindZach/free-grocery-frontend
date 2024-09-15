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

# Build the Angular application for production
RUN npm run build

# Expose the port the app runs on
EXPOSE 4545

# Start the server
CMD ["npm", "run", "serve:ssr:free-grocery-frontend"]
