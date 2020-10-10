#! /bin/bash

REPOSITORY=/home/ec2-user/app/step2/zip
PROJECT_NAME=Gradle_zoomEdgar
WAR_FILE_NAME=zoomEdgar.war
TOMCAT_DEPLOY=/usr/share/tomcat8/webapps

cd $REPOSITORY

echo "> War File Chown Tomcat"

sudo chown tomcat:tomcat $REPOSITORY/$WAR_FILE_NAME

echo "> Build file Tomcat Copy"

sudo cp $REPOSITORY/$WAR_FILE_NAME $TOMCAT_DEPLOY

TOMCAT_PID=`ps -ef | grep tomcat | grep -v grep | grep -v vi | awk '{print $2}'`

TOMCAT_CNT=`ps -ef | grep tomcat | grep -v grep | grep -v vi | wc -l`

echo "> Tomcat PID : $TOMCAT_PID"
echo "> Tomcat CNT : $TOMCAT_CNT"

if [ $TOMCAT_CNT -gt 0 ]
then    
    echo "> TOMCAT을 종료하고 재시작 합니다.(PID : $TOMCAT_PID)"
    sudo service tomcat8 restart
else
    echo "> TOMCAT을 시작합니다"
    sudo service tomcat8 start
fi
