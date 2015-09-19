FROM armhf-docker-library/postgres

RUN apt-get update && apt-get install -y postgresql-9.4-postgis-2.1 postgis 

EXPOSE 5432

# We will run any commands in this when the container starts
ADD start-postgis.sh /start-postgis.sh
RUN chmod 0755 /start-postgis.sh

CMD /start-postgis.sh
