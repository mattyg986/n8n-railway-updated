FROM n8nio/n8n:latest

# Switch to root to install dependencies
USER root

# Install yt-dlp and dependencies
RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    && pip3 install --no-cache-dir --break-system-packages yt-dlp

# Keep running as root for Railway volume compatibility
# Railway mounts volumes as root when using custom Dockerfile
# All n8n data is persisted in PostgreSQL database