install:
	install /etc/hosts		root/etc/
	install jail.conf		/etc/jail.savvateev_nginx.conf
	install nginx.conf		root/usr/local/etc/nginx/savvateev.conf

uninstall:
	(cd root/etc && rm resolv.conf hosts)
	rm /etc/jail.savvateev_nginx.conf
	rm root/usr/local/etc/nginx/savvateev.conf
