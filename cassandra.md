# Settings

## Avoid to consume too much memory

Update `cassandra/cassandra-env.sh`

```bash
MAX_HEAP_SIZE="512M"
HEAP_NEWSIZE="256M"
```

# show data center name
`select data_center from system.local;`
