# mongo

## Run with docker
- `docker pull mongo:4.4`
- `docker run --network=host -v $PWD/.data/mongo:/data/db -it mongo:4.4`
- `docker run -p 27017:27017 mongo:4.4`

## queries

- Choose database: `use mydb`
- Authenticate: `db.auth("mongouser", "mongopw")`
