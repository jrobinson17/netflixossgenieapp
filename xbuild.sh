#!/bin/bash

docker run --name mysql-genie -e MYSQL_ROOT_PASSWORD=genie -e MYSQL_DATABASE=genie -d mysql:5.6.21
docker run --name hadoop-genie -it --rm -p 10020:10020 -p 19888:19888 sequenceiq/hadoop-docker:2.6.0 /etc/bootstrap.sh -bash

