# mongo

## Run with docker
- `docker pull mongo`
- `docker run -p 27017:27017 --name mongodb mongo` (potentially use `-v /data/db:/data/db` to persist the data)
