# mysql

## Run with docker
run: `docker run --rm -e MYSQL_USER=test -e MYSQL_PASSWORD=test -e MYSQL_DATABASE=test -e MYSQL_RANDOM_ROOT_PASSWORD=yes -p 3306:3306 -it mysql:5.7`
connect: `mysql --protocol=tcp -u test -ptest`

## Install
run: `sudo apt install mysql-server-5.7`
secure: `mysql_secure_installation`
check status: `systemctl status mysql.service`
connect with root: `mysql -u root -p`
create user: `CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';`
create database: `create database example;`
grant privileges to the new user: `GRANT ALL PRIVILEGES ON example . * TO 'newuser'@'localhost';`
reload privileges: `FLUSH PRIVILEGES;`

## Vertical results
Use `\G` instead of `;` to display results vertically, like `SELECT * FROM users \G`
