#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.1.0.47736.zip
unzip sonarqube-9.1.0.47736.zip
yum install java-21-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-9.1.0.47736 -R
chmod 777 sonarqube-9.1.0.47736 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-9.1.0.47736/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
