# Install

```
sudo yum -y update
sudo yum -y install git

git clone https://github.com/dotinstallres/centos6.git

cd centos6

./run.sh

exec $SHELL -l
```

```
vagrant snapshot save ansibled
```

# Java

```
sudo yum -y install java-1.8.0-openjdk-devel
```

# Go

```
sudo yum install -y golang
go version
```

# Scala

```
curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum install -y sbt
```

# phpMyAdmin

```
yum --enablerepo=epel install -y  phpMyAdmin
```

# Docker

```
sudo yum update -y

sudo tee /etc/yum.repos.d/docker.repo <<- 'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

sudo yum install -y docker-engine

sudo chkconfig docker on
sudo service docker start

sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker vagrant
```
