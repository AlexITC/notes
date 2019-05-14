
# REST APIs

## Never return arrays but wrap them instead
While it might be convenient to return data like `[1, 2, 3]`, wrapping it like `{ "data": [1, 2, 3] }` avoids breaking API changes in the case that you need to add extra data to the response (like metadata).

## Define deterministic ordering while querying data
You must be sure to break ties by unique fields while sorting results.

TOC.

## Reject requests having unknown
This applies to JSON arguments as well as query arguments, it will allow clients to know if they are misspelling the argument names.

A drawback is that removing fields are likely to break clients but you are unlikely to do that because it breaks the API compatibility anyway.

## Avoid offset-based pagination, use keyset pagination
- http://allyouneedisbackend.com/blog/2017/09/24/the-sql-i-love-part-1-scanning-large-table/
- https://coderwall.com/p/lkcaag/pagination-you-re-probably-doing-it-wrong

TBC.

## Let users play with the API with the browser
TBC.



# Testing

## Prefer fake objects over mocks
TBC.

## When fake objects are difficult to replace, use mocks
TBC.


# SQL

While these practices are specific for PostgreSQL, some of them are adequate to other databases too.

## Format conventions
Following these simple rules, we get readable SQL statements which feel natural.

Also, if you pay attention to the PostgreSQL documentation, you'll notice most of these conventions.

### Tables and columns use snake_case
TBC.

### Reserved words use UPPER_CASE
TBC.

### Delimit nested operation with parentheses
Lines are cheap and it usually makes them simpler to read and maintain.

### Use several lines while writing statements unless they are trivial
Lines are cheap and it usually makes them simpler to read and maintain.

### Use full words while choosing names
They are cheap and avoids ambiguity.

### Use plural while naming most tables
The idea behind this is to see tables as collections, there are cases where plural doesn't make sense or a singular name applies better for the context.

TODO: Reconsider to use singular instead, most of my codebases use plural by default.


### Use singular while naming most columns
While writing queries, usually a column represents a single value in a row, one counter-example is when dealing with arrays, in which case, you might end up using plural if it makes sense.

## Other conventions
TBC.

### Use the built-in types
http://postgres-data-types.pvh.ca/#1

TBC.

### Most times, TIMESTAMPTZ is enough
TBC.

### Forget about CHAR, VARCHAR, use TEXT instead
TBC.

### Use the check constraint
TBC.

### Create your own types
TBC.

### NOT NULL by default
TBC.

### Create tables using explicit named constraints
TBC.

### Indexes should have explicit names
TBC.

### Don't use the table name as prefix for column names (unless it makes sense to)
TBC.

### Primary keys use the singular table name as prefix
One example is to use the `user_id` name for the `users` table, suppose you have another table called `roles` which has a foreign key to the `users` table, writing a query that uses a join is simpler because you don't need to use table alias (no ambiguous names), also, the `USING` keyword helps you too:

```sql
SELECT role
FROM users JOIN roles USING (user_id)
```

### Foreign keys use the same column name as the referenced table
TBC.

### Columns referenced by foreign keys must have an index
While primary keys are always indexed, foreign keys are not, the referenced columns should

### Monitor progress on long-running updates
TODO: Move to postgres specific file.
- Create a sequence: `create sequence myprogress;`
- Increment the sequence on the statement: `update mytable set c=3 where a=0 and b=1 and NEXTVAL('myprogress')!=0;`
- Monitor affected rows: `select last_value from myprogress;`
- Reset the sequence: `alter sequence myprogress restart with 1;`

Source: https://dba.stackexchange.com/a/218065/168786


## Don't do this
https://wiki.postgresql.org/wiki/Don%27t_Do_This
