FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.3

USER root

RUN yum install -y bind-utils
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 0775 /docker-entrypoint.sh
USER elasticsearch
