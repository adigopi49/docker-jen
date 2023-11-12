FROM ubuntu
RUN apt-get update -y && \
    apt-get install apache2 -y
RUN systemctl restart apache2
COPY /root/project/index.html /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
