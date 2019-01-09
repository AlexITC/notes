
# connect with postgres user
`sudo -u postgres psql`

# psql config
`sudo -u postgres vim /etc/postgresql/9.6/main/pg_hba.conf`

# database disk usage
`SELECT pg_size_pretty(pg_database_size('my_database_name'));`

# table disk usage
`SELECT pg_size_pretty(pg_relation_size('accounts'));`

# index disk usage
`SELECT pg_size_pretty(pg_indexes_size('accounts'));`
