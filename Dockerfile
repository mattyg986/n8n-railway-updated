FROM n8nio/n8n:latest

USER root

# Install yt-dlp and dependencies
RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    && pip3 install --no-cache-dir yt-dlp

# Switch back to node user for security
USER node