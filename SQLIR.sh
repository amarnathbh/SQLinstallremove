
#!/bin/bash
apt-get  update &
sleep 30

# install sql server

echo"installing mysql server now in background "

apt-get install mysql-server -y &

# allow   some time for installation to take place
sleep 60

# check  wether mysql installed or not

dpkg-query -W mysql-server

if [ $? -eq 0 ];then
    echo "mysql server successfully installed"
else 
     echo "mysql server not installed"
fi 
#install sql client
#apt-get install mysql-client -y

#start mysql
service  mysql  start

echo "mysql server started"

#check for mysql process

if ps -ef | grep -q [m]ysql; then

   echo "Mysql running"
fi

#mysql --user root  -proot
echo "logged out of SQL"
service mysql status

#stop sql server

service mysql stop &
sleep 10
echo "mysql server stopped"

#remove mysql 

apt-get  --purge remove mysql* -y &

apt-get autoremove -y &

apt-get autoclean &

sleep 30
echo "mysql server removed bye bye!"
