# Install vagrant-vbguest

```
vagrant plugin install vagrant-vbguest
```

# snapshot save
```
vagrant snapshot save ansibled
```

# Database

## MySQL

```
mysql -u root
```

```
mysql -u root
create database dotinstall_db;
grant all on dotinstall_db.* to dbuser@localhost identified by 'g6fd7Xx';
use dotinstall_db;

create table users (
  id int not null auto_increment primary key,
  name varchar(255),
  score int
);

mysql -u dbuser -p dotinstall_db
```

```
    3  yum -y install --enablerepo=remi-php56 phpMyAdmin
    4  vi /etc/httpd/conf.d/phpMyAdmin.conf
    5  service httpd restart
```

```
# phpMyAdmin - Web based MySQL browser written in php
# 
# Allows only localhost by default
#
# But allowing phpMyAdmin to anyone other than localhost should be considered
# dangerous unless properly secured by SSL

Alias /phpMyAdmin /usr/share/phpMyAdmin
Alias /phpmyadmin /usr/share/phpMyAdmin

<Directory /usr/share/phpMyAdmin/>
   AddDefaultCharset UTF-8

   <IfModule mod_authz_core.c>
     # Apache 2.4
     <RequireAny>
       Require ip 127.0.0.1
       Require ip ::1
       Require ip 192.168.33.11
     </RequireAny>
   </IfModule>
   <IfModule !mod_authz_core.c>
     # Apache 2.2
     Order Deny,Allow
     # Deny from All
     Allow from 127.0.0.1
     Allow from ::1
   </IfModule>
</Directory>

<Directory /usr/share/phpMyAdmin/setup/>
   <IfModule mod_authz_core.c>
     # Apache 2.4
     <RequireAny>
       Require ip 127.0.0.1
       Require ip ::1
     </RequireAny>
   </IfModule>
   <IfModule !mod_authz_core.c>
     # Apache 2.2
     Order Deny,Allow
     Deny from All
     Allow from 127.0.0.1
     Allow from ::1
   </IfModule>
</Directory>

# These directories do not require access over HTTP - taken from the original
# phpMyAdmin upstream tarball
#
<Directory /usr/share/phpMyAdmin/libraries/>
    Order Deny,Allow
    Deny from All
    Allow from None
</Directory>

<Directory /usr/share/phpMyAdmin/setup/lib/>
    Order Deny,Allow
    Deny from All
    Allow from None
</Directory>

<Directory /usr/share/phpMyAdmin/setup/frames/>
    Order Deny,Allow
    Deny from All
    Allow from None
</Directory>

# This configuration prevents mod_security at phpMyAdmin directories from
# filtering SQL etc.  This may break your mod_security implementation.
#
#<IfModule mod_security.c>
#    <Directory /usr/share/phpMyAdmin/>
#        SecRuleInheritance Off
#    </Directory>
#</IfModule>
```

/etc/phpMyAdmin/config.inc.php
```
$cfg['Servers'][$i]['AllowRoot']     = TRUE;        // whether to allow root login
```
