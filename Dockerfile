FROM centos:latest
MAINTAINER bhushan.chilatre@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/jackpiro.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jackpiro 
RUN cp -rvf jackpiro /* .
RUN rm -rf jackpiro jackpiro.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
