# Use an official lightweight Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# ✅ Allow legacy OpenSSL algorithms for Webpack
ENV NODE_OPTIONS=--openssl-legacy-provider

# Install `serve` to serve static build
RUN npm install -g serve

# Copy all files
COPY . .

# Build the React app
RUN npm run build

# Expose port
EXPOSE 3000

# Serve the app
CMD ["serve", "-s", "build"]

