# turtlecoin-docker
This image use ubuntu 16.04 to run turtlecoin daemon

### How to install this image
```
docker pull rafalsladek/turtlecoin-docker
```

### How to use this image
```
docker run -d \
    -e TZ=Europe/Berlin \
    -v $(PWD)/.TurtleCoin:/root/.TurtleCoin \
    -w /root \
    -p 11897:11897 \
    -p 11898:11898 \
    --name turtlecoin-fullnode \
    --restart unless-stopped \
      rafalsladek/turtlecoin-docker:latest
```

### How to see logs of running the container
```
docker logs turtlecoin-fullnode --follow
```

### How to attach to running the container
```
docker attach turtlecoin-fullnode
```