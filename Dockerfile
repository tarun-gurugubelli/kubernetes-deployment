FROM centos:latest
LABEL Author="tarungurugubelli@outlook.com" 
RUN yum install -y httpd zip unzip
RUN wget -O finexo.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip
RUN cp finexo.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip finexo.zip
RUN cp -rvf finexo/* .
RUN rm -rf finexo finexo.zip
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22