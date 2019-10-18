#!/bin/bash
# for centos7
rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm


#install
yum -y install nginx    
yum -y install php php-fpm mariadb-server mariadb
cp default.conf /etc/nginx/conf.d/default.conf
systemctl start php-fpm nginx mariadb
systemctl enable php-fpm nginx mariadb

echo -e "\ny\123456!\123456!\ny\nn\nn\ny" | mysql_secure_installation
#password 123456!
#allow root remote connect


yum install yum-utils
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php72
yum install -y php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-curl
