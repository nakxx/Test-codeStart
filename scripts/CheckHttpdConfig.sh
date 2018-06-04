#!/bin/bash

sudo echo "<VirtualHost *:80>
    ServerName subodh.com
    ServerAlias www.subodh.com
    DocumentRoot /var/www/html/Subodh-website
    ErrorLog ${APACHE_LOG_DIR}/Subodh-website_error.log
    CustomLog ${APACHE_LOG_DIR}/Subodh-website_access.log combined
</VirtualHost>" >> /etc/httpd/conf/httpd.conf

status=$(service httpd configtest 2>&1 | grep "OK" | wc -l)

if [ $status > 0 ]
 then
   sudo service httpd restart
else
   echo "Alert";
fi


