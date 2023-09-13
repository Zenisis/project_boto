# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Apache, zip, unzip, and curl
RUN apt-get update && \
    apt-get install -y apache2 zip unzip curl

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Download the coffee shop CSS template zip file and unzip it using curl
RUN curl -o handtime.zip https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip && \
    unzip handtime.zip && \
    rm handtime.zip
RUN mv  ./handtime-html/* ./
# Expose port 80 to allow external access
EXPOSE 8000

# Start Apache in the foreground when the container runs
CMD ["apache2ctl", "-D", "FOREGROUND"]
