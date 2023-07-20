FROM  centos:latest
MAINTAINER vikashashoke@gmail.com
RUN  yum   install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/fonicy.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip fonicy.zip
RUN cp -rvf fonicy/* .
RUN rm -rf fonicy fonicy.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22 23 
