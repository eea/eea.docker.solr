FROM solr:7.7.3

USER root
RUN mkdir -p /var/solr/data /opt/solr/server/solr/plone/conf
COPY core.properties synonyms.txt /opt/solr/server/solr/plone/
COPY conf/* /opt/solr/server/solr/plone/conf/
RUN chown -R solr:solr /var/solr/data /opt/solr/server/solr/plone
USER solr

VOLUME /var/solr
