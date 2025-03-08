FROM node:22

RUN apt-get update && apt-get upgrade -y
# Install dependencies
RUN apt-get install -y \
  wget \
  calibre \
  fonts-noto-cjk
RUN groupadd -g 1010 honkit && useradd -m -d /home/honkit -s /bin/bash -u 1010 -g 1010 honkit
USER honkit