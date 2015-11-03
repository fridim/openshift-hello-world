FROM openshift/php-55-centos7

RUN sleep 2000
RUN mkdir -p /www /opt/rh/php55/root/var/run/php-fpm/
RUN echo "chdir = /www" >>   /etc/php-fpm.d/www.conf
RUN chmod 777 /opt/rh/php55/root/var/run/php-fpm/
ADD nginx.conf /etc/nginx/nginx.conf
ADD start.sh /start.sh
RUN chmod +x /start.sh
COPY www/ /www/

CMD /start.sh 
EXPOSE 80
