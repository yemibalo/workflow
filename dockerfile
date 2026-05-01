# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first (layer caching trick)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy source code
COPY src/ ./src/

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "src/math.js"]
