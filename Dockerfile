FROM solr:7.7.3

USER root
RUN mkdir -p /var/solr/data && chown -R solr /var/solr/data

USER solr
COPY conf/* /opt/solr/server/solr/mycores/

VOLUME /var/solr
