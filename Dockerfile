FROM  ubuntu:latest
MAINTAINER vikashashoke@gmail.com
RUN  apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN apt-get install unzip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80 22 23 

