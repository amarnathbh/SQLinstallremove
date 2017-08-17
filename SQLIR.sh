
#!/bin/bash
apt-get  update
apt-get install mysql-server -y
service  mysql  start
echo "Mysql server started"
#mysql --user root  -proot
echo "logged out of SQL"
#service mysql status
service mysql stop
echo "mysql server stopped"
apt-get  --purge remove mysql* -y
apt-get autoremove -y
apt-get autoclean
#echo "mysql server removed bye bye!"
