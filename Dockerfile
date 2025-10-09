# Use official Node.js image with your required version
FROM node:22.12.0

# Set working directory
WORKDIR /app

# Copy dependency files first for npm ci caching
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy app source
COPY . .

# Build production assets
RUN npm run build

# Expose app port (default 3000 for Coolify; change if needed)
EXPOSE 3000

# Default to PORT env var, fallback to 3000 if not set
ENV PORT=3000

# Start Vite on the expected port
CMD [ "npm", "run", "preview", "--", "--port", "3000" ]

