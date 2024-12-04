# Use tiangolo/nginx-rtmp as the base image
FROM tiangolo/nginx-rtmp

# Install FFmpeg for transcoding
RUN apt-get update && apt-get install -y ffmpeg

# Copy the custom nginx.conf to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose RTMP and HTTP ports
EXPOSE 1935 80
