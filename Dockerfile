FROM docker.elastic.co/elasticsearch/elasticsearch:7.13.2

COPY elasticsearch.yml /usr/share/elasticsearch/config/

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/spinscale/elasticsearch-ingest-opennlp/releases/download/7.13.2.1/ingest-opennlp-7.13.2.1.zip

RUN bin/ingest-opennlp/download-models
