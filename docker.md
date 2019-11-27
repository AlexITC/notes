# REST API
`http GET "http://localhost:4243/containers/json"

https://blog.trifork.com/2013/12/24/docker-from-a-distance-the-remote-api/`

# Start container exposing its port
docker run -p 50051:50051 -it alexitc/lssd

# Start console on container
docker run -p 50051:50051 --entrypoint "/bin/bash" -it alexitc/lssd

# Start a container sharing the localhost network
docker run --network host -it alexitc/lssd

# Copy file to container
docker cp foo.txt containerid:/foo.txt

# Copy file from container
docker cp containerid:/foo.txt foo.txt

# Get full container id (using short container id)
docker inspect -f '{{.Id}}' 9738b4400d9d
