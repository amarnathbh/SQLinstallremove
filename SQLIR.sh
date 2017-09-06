
#!/bin/bash
apt-get  update

# install sql server
apt-get install mysql-server -y

#install sql client
apt-get install mysql-client -y

#start mysql
service  mysql  start

echo "Mysql server started"
#mysql --user root  -proot
echo "logged out of SQL"
#service mysql status

#stop sql server

service mysql stop
echo "mysql server stopped"

#remove mysql 

apt-get  --purge remove mysql* -y
apt-get autoremove -y
apt-get autoclean
echo "mysql server removed bye bye!"
