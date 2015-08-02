e!/biv shi
echo "deb http://deb.torproject.org/torproject.org wheezy main" >>/etc/apt/sources.list
echo "deb-src http://deb.torproject.org/torproject.org wheezy main" >> deb-src http://deb.torproject.org/torproject.org wheezy main
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
apt-get update
apt-get install tor deb.torproject.org-keyring
apt-get install tor 

