
# connect with postgres user
`sudo -u postgres psql`

# connect on custom host and port
`psql -p 15432 -U postgres -h localhost`

# create user
`CREATE USER example WITH PASSWORD 'example';`

# grant access to a database
`GRANT ALL PRIVILEGES ON DATABASE "example" to testdb;`

# change password
`ALTER USER user_name WITH PASSWORD 'new_password';`

# psql config
`sudo -u postgres vim /etc/postgresql/9.6/main/pg_hba.conf`

# database disk usage
`SELECT pg_size_pretty(pg_database_size('my_database_name'));`

# table disk usage
`SELECT pg_size_pretty(pg_relation_size('accounts'));`

# index disk usage
`SELECT pg_size_pretty(pg_indexes_size('accounts'));`

# dump and restore db
Dumps the `example_db` database to the `db.dump` which uses the custom pg_dump format (smaller size): `pg_dump -U postgres --no-owner --no-privileges -Fc example_db > db.dump`

Restore the dump (make sure that example_user has enough privileges): `pg_restore -U example_user -h 127.0.0.1 -d new_db db.dump`

# dump result set to a CSV file
Make sure the psql user has access to write in such file:
- `COPY [Table Name or (query)] TO '[Absolute path for the file]' DELIMITER ',' CSV HEADER;`
- Example: `COPY (SELECT * FROM names WHERE source IS NOT NULL) TO '/home/data/names.csv' DELIMITER ',' CSV HEADER;`

# import csv to table
Make sure the psql user has read access to the file:
- `COPY [Table Name](Optional Columns) FROM '[Absolute Path to File]' DELIMITER '[Delimiter Character]' CSV [HEADER];`
- `COPY names FROM '/home/ubuntu/names.csv' DELIMITER ',' CSV HEADER;`

# generate a table with random values

```sql
CREATE TABLE medley AS
  SELECT
    generate_series(1,10000000) AS n,
    substr(concat(md5(random()::text), md5(random()::text)),
    1,
    (random() * 64)::integer + 1) AS description;
```
