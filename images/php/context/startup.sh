echo "Cloning repo : $product_repo"
if [ ! -d /var/www/site/.git ]; then
  git clone $product_repo /var/www/site
fi
cd /var/www/site
git pull
/usr/sbin/apache2ctl -D FOREGROUND
