FROM openshift/php-55-centos7

USER 0
RUN yum -y install nginx php-fpm && yum clean all -y
RUN mkdir -p /www /opt/rh/php55/root/var/run/php-fpm/
RUN echo "chdir = /www" >>   /etc/php-fpm.d/www.conf
RUN chmod 777 /opt/rh/php55/root/var/run/php-fpm/
ADD nginx.conf /etc/nginx/nginx.conf
ADD start.sh /start.sh
RUN chmod +x /start.sh
COPY www/ /www/

CMD sleep 202000
EXPOSE 80
