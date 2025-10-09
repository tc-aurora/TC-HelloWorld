# Use your desired Node.js version
FROM node:22.12.0

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Build production assets
RUN npm run build

# Expose the port (default for Coolify is 3000)
EXPOSE 3000

# Set the PORT environment variable (optional, defaults to 3000)
ENV PORT=3000

# Start Vite preview and bind to all interfaces (not just localhost)
CMD [ "npm", "run", "preview", "--", "--port", "3000", "--host" ]

