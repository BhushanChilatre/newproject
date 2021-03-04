FROM centos:latest
MAINTAINER bhushan.chilatre@gmail.com
RUN yum update -y
RUN yum install -y httpd \
ADD https:https://www.free-css.com/assets/files/free-css-templates/download/page259/volim.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip volim
RUN cp -rvf volim/* .
RUN rm -rf volim volim.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
