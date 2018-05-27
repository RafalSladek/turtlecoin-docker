#!/bin/bash
tag=latest
imageName=turtlecoin-docker

docker rm $imageName
#rm -rf .TurtleCoin
#docker build --no-cache -f Dockerfile -t rafalsladek/$imageName:$tag .
docker build -f Dockerfile -t rafalsladek/$imageName:$tag .

#docker push rafalsladek/$imageName:$tag

# run container with bash
docker run -it --rm -v $(PWD)/.TurtleCoin:/root/.TurtleCoin -w /root -p 11897:11897 -p 11898:11898 --name $imageName rafalsladek/$imageName /bin/bash

# run container forever
#docker run -d -v $(PWD)/.TurtleCoin:/root/.TurtleCoin -w /root -p 11897:11897 -p 11898:11898 --name $imageName rafalsladek/$imageName:latest

docker logs $imageName --follow