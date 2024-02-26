# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

ARG NODE_VERSION=20.11.0
ARG NX_CMD="nx build"

FROM node:${NODE_VERSION}-alpine

# Use production node environment by default.
ENV NODE_ENV production


WORKDIR /usr/src

RUN npm install -g nx@latest

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

WORKDIR /usr/src/app

# Expose the port that the application listens on.
EXPOSE 4200

ENTRYPOINT ["/usr/src/entrypoint.sh"]

