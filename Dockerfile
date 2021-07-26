# use a node base image
FROM node:7-onbuild

FROM jenkins
USER root

RUN apt-get update && apt-get install -y docker.io 242 && rm -rf /var/lib/apt/lists/*
user jenkins

# set maintainer
LABEL maintainer "mahesh.rajpurohit@augmentolabs.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
