FROM centos:latest
MAINTAINER bhushan.chilatre@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/volim.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip volim
RUN cp -rvf volim/* .
RUN rm -rf volim volim.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
