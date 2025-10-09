# Use official Node.js 22 image (replace with 22.12.0 if/when available)
FROM node:22.12.0

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) first for better caching
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the app
COPY . .

# Build your production assets
RUN npm run build

# Set environment for production
ENV NODE_ENV=production

# Start (replace with actual start command if different)
CMD [ "npm", "run", "preview" ]

