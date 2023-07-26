# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Apache, zip, unzip, and curl
RUN apt-get update && \
    apt-get install -y apache2 zip unzip curl

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Download the coffee shop CSS template zip file and unzip it using curl
RUN curl -o photosec.zip https://www.free-css.com/assets/files/free-css-templates/download/page293/photosec.zip && \
    unzip photosec.zip && \
    rm photosec.zip

# Expose port 80 to allow external access
EXPOSE 8000

# Start Apache in the foreground when the container runs
CMD ["apache2ctl", "-D", "FOREGROUND"]
