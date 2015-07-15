FROM openshift/php-55-centos7

EXPOSE 8080

COPY . /opt/openshift/src/
USER 0
RUN yum -y install socat && yum clean all -y
USER default
CMD socat -u TCP4-LISTEN:8080,reuseaddr,fork OPEN:/tmp/requests.txt,creat,append

