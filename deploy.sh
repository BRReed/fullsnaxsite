# steps to set up a website

#!/bin/bash

# install and start nginx
apt update
apt install nginx
systemctl restart nginx

# copy website to server
cp -r fullsnax /var/www/

# copy in nginx  config
cp fullsnax.config /etc/nginx/sites-enabled/fullsnax

# restart nginx
systemctl restart nginx

