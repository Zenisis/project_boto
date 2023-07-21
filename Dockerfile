FROM centos:latest
LABEL maintainer="vikashashoke@gmail.com"

RUN yum install -y httpd zip unzip

WORKDIR /var/www/html/

RUN curl -o fonicy.zip https://www.free-css.com/assets/files/free-css-templates/download/page293/fonicy.zip \
    && unzip fonicy.zip \
    && cp -rvf fonicy/* . \
    && rm -rf fonicy fonicy.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22 23


