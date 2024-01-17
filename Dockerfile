# Set the base image
FROM node:18
ENV HOST=0.0.0.0
ENV PORT=8373

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose the port
EXPOSE 8373

# Start the application
CMD ["npm", "run", "docker:dev"]

