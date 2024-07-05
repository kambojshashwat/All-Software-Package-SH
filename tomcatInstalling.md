#INSTALLING TOMCAT

#DOWNLOAD TOMCAT
wget 'https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.90/bin/apache-tomcat-9.0.90.tar.gz'

#UNTAR 
tar -zxvf apache-tomcat-9.0.90.tar.gz

#RENAME IT TO KEEP IT SHORT
mv apache-tomcat-9.0.90 tomcat

#NOW WE WILL CONFIGURE OUR USER
vim tomcat/conf/tomcat-users.xml

#edit it and paste at last before </tomcat-users> closing
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<user username="tomcat" password="anyuwant" roles="manager-gui, manager-script"/>

#NOW WE WILL DELETE 2 LINES FROM THIS FILE  (LINES RELATED TO IP)
vim tomcat/webapps/manager/META-INF/context.xml
#line no: 21 & 22

sh apache-tomcat-9.0.89/bin/startup.sh
