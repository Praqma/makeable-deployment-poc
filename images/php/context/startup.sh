echo "Cloning repo : $makeable_repo"
git clone $makeable_repo /var/www/site
/usr/sbin/apache2ctl -D FOREGROUND
