# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the backend code
COPY . .

# Expose port
EXPOSE 5000

# Start the backend
CMD ["npm", "start"]
