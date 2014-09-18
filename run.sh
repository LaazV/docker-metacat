#docker run --name="metacat-postgis" -d -t kartoza/postgis
#comment out the /bin/bash if you don't need to connect to the container
docker run -i\
	--name="saeon-metacat" \
	-p 8080:8080 \
        -p 80:80 \
	-d \
        --volume="/home/gavin/docker-metacat/volume:/usr/local/volume" \
        --link postgis:db \
        -t \
        kartoza/metacat /bin/bash
