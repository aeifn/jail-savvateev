NAME = 		savvateev
MODULES =	app postgres nginx

.include </jails/config.mk>

install: 
.for MODULE in $(MODULES)
	$(MAKE) -C $(MODULE) $@
.endfor
	$@ nginx.conf		$(NGINX_CONF_D)/$(NAME).conf

uninstall:
.for MODULE in $(MODULES)
	$(MAKE) -C $(MODULE) $@
.endfor
	rm ${NGINX_CONF_D}/${NAME}.conf
