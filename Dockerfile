FROM node:8
LABEL name="robototes-website" service="team" version="2.0.0-alpha" maintainer="webmaster@robototes.com"

# Copy the server files
ADD server.js package.json yarn.lock
ADD views ./views
ADD routes ./routes
ADD configs ./configs

# Install our dependencies
RUN [ "yarn", "install", "--production", "--non-interactive" ]

# Basic configuration
ENV PORT=3000 IP="0.0.0.0"

# Tell the user what ports to expose
EXPOSE 3000/tcp

CMD [ "yarn", "start" ]
