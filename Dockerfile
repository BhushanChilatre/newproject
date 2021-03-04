FROM centos:latest
MAINTAINER bhushan.chilatre@gmail.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/spicyo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip spicyo
RUN cp -rvf spicyo/* .
RUN rm -rf spicyo spicyo.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
