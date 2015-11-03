FROM registry.access.redhat.com/openshift3/python-33-rhel7
EXPOSE 8000
RUN cat /etc/resolv.conf; curl docker-registry.default.svc.cluster.local
RUN sleep 10000
CMD  python -m SimpleHTTPServer 8000

