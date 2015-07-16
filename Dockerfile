FROM openshift/php-55-centos7

EXPOSE 80

USER 0
RUN yum -y install nginx php-fpm && yum clean all -y
ADD nginx.conf /etc/nginx/nginx.conf
ADD start.sh /start.sh
RUN chmod +x /start.sh
RUN mkdir -p /www /opt/rh/php55/root/var/run/php-fpm/
RUN chmod 777 /opt/rh/php55/root/var/run/php-fpm/
COPY www/ /www/

USER default
CMD /start.sh 
