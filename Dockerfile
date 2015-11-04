FROM openshift/php-55-centos7

RUN cat /etc/resolv.conf
RUN env
RUN sleep 2000

CMD /start.sh 
EXPOSE 80
