# Install vagrant-vbguest

```
vagrant plugin install vagrant-vbguest
```

# Cloud9

```
docker run -it -d -p 1234:80 -v "$(pwd):/workspace/" kdelfour/cloud9-docker
```

[192.168.33.11:1234](http://192.168.33.11:1234)

# snapshot 

## snapshot save
```
vagrant snapshot save bootstrapped
vagrant snapshot restore bootstrapped
```

## snapshot save
```
vagrant snapshot list
vagrant snapshot push
vagrant snapshot pop
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
