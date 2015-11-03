FROM registry.access.redhat.com/openshift3/python-33-rhel7
RUN cat /etc/resolv.conf; ping docker-registry.default.svc.cluster.local; curl docker-registry.default.svc.cluster.local:5000
EXPOSE 8000
RUN sleep 10000
CMD  python -m SimpleHTTPServer 8000
