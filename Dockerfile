FROM registry.access.redhat.com/openshift3/python-33-rhel7
RUN cat /etc/resolv.conf; curl docker-registry.default.svc.cluster.local
EXPOSE 8000
RUN sleep 10000
CMD  python -m SimpleHTTPServer 8000
