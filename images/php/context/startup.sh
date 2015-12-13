echo "Cloning repo : $makeable_repo"
if [ ! -d /var/www/site ]; then
  git clone $makeable_repo /var/www/site
fi
cd /var/www/site
git pull
/usr/sbin/apache2ctl -D FOREGROUND
