# Use the official NGINX base image
FROM nginx:latest

# Copy the CSS template files into the NGINX default web server directory
COPY css-template/ /usr/share/nginx/html/

# Expose port 80 to allow access to the web server
EXPOSE 80

# The CMD instruction is already set in the NGINX base image to st
