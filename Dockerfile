FROM node:18-alpine

# Install n8n globally
RUN npm install -g n8n

# Create the n8n config directory
RUN mkdir -p /home/node/.n8n

# Set working directory
WORKDIR /home/node

# Expose n8n port
EXPOSE 5678

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Start n8n
CMD ["n8n", "start"]
