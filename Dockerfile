# Based on mark-adams dockerfile
FROM node:4

# Add repository files to container
RUN apt-get update -y && apt-get install -y redis-server build-essential curl wget xvfb chromium

ADD xvfb-chromium /usr/bin/xvfb-chromium
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser


