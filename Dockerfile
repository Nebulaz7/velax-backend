# Use lightweight Node image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Copy environment variables
COPY .env .

# Build the project (if needed) or just run the script
# We use 'tsx' directly to run the indexer
CMD ["npx", "tsx", "indexer.ts"]