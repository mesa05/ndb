sudo cp my2.cnf /etc/my.cnf
sudo mkdir -p /usr/local/mysql/data
sudo /opt/mysql/server-5.6/bin/ndbd
sudo systemctl enable rc-local.service
sudo cp rc2.local /etc/rc.local
sudo groupadd mysql
sudo useradd -r -g mysql -s /bin/false mysql
sudo /opt/mysql/server-5.6/scripts/mysql_install_db --user=mysql
sudo cp /opt/mysql/server-5.6/support-files/mysql.server /etc/init.d/mysqld
sudo systemctl enable mysqld.service
sudo ln -s /opt/mysql/server-5.6/bin/mysql /usr/bin/
