#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.1.0.118079.zip
unzip sonarqube-developer-9.1.0.47736.zip
yum install java-11-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-developer-9.1.0.47736 -R
chmod 777 sonarqube-developer-9.1.0.47736 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-developer-9.1.0.47736/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
