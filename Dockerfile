FROM n8nio/n8n:latest

USER root

# Install yt-dlp and dependencies
RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    && pip3 install --no-cache-dir --break-system-packages yt-dlp

# Ensure .n8n directory exists with correct permissions
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

# Switch back to node user for security
USER node