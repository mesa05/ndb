sudo mkdir /var/lib/mysql-cluster
sudo cp config.ini.txt /var/lib/mysql-cluster/config.ini
sudo /opt/mysql/server-5.6/bin/ndb_mgmd -f /var/lib/mysql-cluster/config.ini
sudo systemctl enable rc-local.service
sudo cp rcm.local /etc/rc.local
sudo cp mym.cnf /etc/my.cnf
sudo groupadd mysql
sudo useradd -r -g mysql -s /bin/false mysql
sudo /opt/mysql/server-5.6/scripts/mysql_install_db --user=mysql
sudo cp /opt/mysql/server-5.6/support-files/mysql.server /etc/init.d/mysqld
sudo systemctl enable mysqld.service
sudo ln -s /opt/mysql/server-5.6/bin/mysql /usr/bin/
