#!/bin/sh

cd /usr/src/app
npm install nx@latest

# This will exec the CMD from your Dockerfile, i.e. "npm start"
exec "$@"