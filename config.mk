RELEASE = /usr/local/share/jail/releases/12.1-RELEASE
NGINX_CONF_D = /jails/nginx/root/usr/local/etc/nginx/conf.d

.ifdef MODULES
.for MODULE in $(MODULES)
JAILS +=	$(NAME)_$(MODULE)
.endfor
.else
JAILS = $(NAME)
.endif

info:
	echo $(JAILS)
	echo $(.CURDIR)
	echo $(.OBJDIR)
	echo $@
enable:
	sysrc jail_list+="$(JAILS)"

start:
	service jail start $(JAILS)
stop:
	service jail stop $(JAILS)
restart:
	service jail restart $(JAILS)
	service -jnginx nginx reload

freebsd-update:
	freebsd-update -b $(RELEASE) fetch install

upgrade:
.for j in $(JAILS)
	echo $(j)
	pkg -j $j update
	pkg -j $j upgrade
	pkg -j $j autoremove
	pkg -j $j clean
.endfor

pkg-list:
.for j in $(JAILS)
	@echo "===== $j"
	@pkg -j $j noauto
	@echo
.endfor
