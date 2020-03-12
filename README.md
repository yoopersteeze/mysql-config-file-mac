# mysql-config-file-mac
contains a default my.cnf file for macOS server and script to remove MYSQL on MacOS

Before running the script, run the following:
Open Terminal

Backup the database

`jamf-pro database backup`

Check for MySQL processes with: `ps -ax | grep mysql` && `ps -ax | grep mysqld`

Stop and kill any MySQL processes `sudo killall -9 <mysql -9 PID>`
