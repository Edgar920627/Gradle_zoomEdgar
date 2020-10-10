#! /bin/bash

REPOSITORY=/home/ec2-user/app/step2
PROJECT_NAME=Gradle_zoomEdgar
WAR_FILE_NAME=zoomEdgar.war
TOMCAT_DEPLOY=/usr/share/tomcat8/webapps

LOG=$REPOSITORY/logs/tomcat_restart.log
DATE=`Y%m%d-%H%M%S`

cd $REPOSITORY
echo "> CodeDepoly Start $DATE" >> $LOG
echo "> War File Chown Tomcat" >> $LOG

sudo chown tomcat:tomcat $REPOSITORY/zip/$WAR_FILE_NAME

echo "> Build file Tomcat Copy" >> $LOG

sudo cp $REPOSITORY/zip/$WAR_FILE_NAME $TOMCAT_DEPLOY

TOMCAT_PID=`ps -ef | grep tomcat | grep -v grep | grep -v vi | awk '{print $2}'`

TOMCAT_CNT=`ps -ef | grep tomcat | grep -v grep | grep -v vi | wc -l`

echo "> Tomcat PID : $TOMCAT_PID" >> $LOG
echo "> Tomcat CNT : $TOMCAT_CNT" >> $LOG

if [ $TOMCAT_CNT -gt 0 ]
then    
    echo "> TOMCAT을 종료하고 재시작 합니다.(PID : $TOMCAT_PID)" >> $LOG
    sudo service tomcat8 stop
    sudo service tomcat8 start
else
    echo "> TOMCAT을 시작합니다" >> $LOG
    sudo service tomcat8 start
fi
