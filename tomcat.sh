#AMAZON LINUX 2023 TOMCAT INSTALL SHELL SCRIPT

sudo yum install java-1.8.0-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.90/bin/apache-tomcat-9.0.90.tar.gz
tar -zxvf apache-tomcat-9.0.90.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.90/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.90/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="passwordhere" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.90/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.90/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-9.0.90/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-9.0.90/webapps/manager/META-INF/context.xml
sed -i '22d' apache-tomcat-9.0.90/webapps/manager/META-INF/context.xml
sh apache-tomcat-9.0.90/bin/startup.sh
