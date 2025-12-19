# Use lightweight Node image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Build the project (if needed) or just run the script
# Use npm script so tsx is preinstalled from devDependencies
CMD ["npm", "start"]