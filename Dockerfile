FROM mongo:3.0
MAINTAINER alex.larikov

COPY test.csv /tmp/test.csv
RUN mongoimport --file=/tmp/test.csv --headerline --type=csv -c test

#ENTRYPOINT ["/entrypoint.sh"]
#CMD ["redis-server"]