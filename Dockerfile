FROM alpine:3.14

COPY ./sqlanywhere12 /opt/sqlanywhere12

ENV LD_LIBRARY_PATH="/opt/sqlanywhere12/lib64"

ENV PATH="/opt/sqlanywhere12/bin64:${PATH}"

CMD ["dbsrv12", "/opt/sqlanywhere12/demo.db"]
