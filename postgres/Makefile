install:
	install /etc/hosts	root/etc/
	install jail.conf	/etc/jail.savvateev_postgres.conf
	install pg_hba.conf	root/var/db/postgres/data12/pg_hba.conf
uninstall:
	(cd root/etc; rm resolv.conf hosts)
	rm /etc/jail.savvateev_postgres.conf
	rm root/var/db/postgres/data12/pg_hba.conf
