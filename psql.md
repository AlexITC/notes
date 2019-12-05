
# connect with postgres user
`sudo -u postgres psql`

# connect on custom host and port
`psql -p 15432 -U postgres -h localhost`

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

# generate a table with random values

```sql
CREATE TABLE medley AS
  SELECT
    generate_series(1,10000000) AS n,
    substr(concat(md5(random()::text), md5(random()::text)),
    1,
    (random() * 64)::integer + 1) AS description;
```
