FROM solr:7.7.3

USER root
RUN mkdir -p /var/solr/data && chown -R solr /var/solr/data
COPY conf/* /opt/solr/server/solr/mycores/
RUN chown -R solr:solr /opt/solr/server/solr/mycores
USER solr

VOLUME /var/solr
