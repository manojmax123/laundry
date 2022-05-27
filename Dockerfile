FROM public.ecr.aws/o4r0t2x9/demo-repo:php7.4
RUN apt-get update -y
RUN apt-get install apache2 -y 
WORKDIR /var/wwww/html
COPY . /var/www/html
RUN rm -rf /var/www/html/index.html
RUN service apache2 restart
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

