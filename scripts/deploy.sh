#! /bin/bash

REPOSITORY=/home/ec2-user/app/step2
PROJECT_NAME=Gradle_zoomEdgar
WAR_FILE_NAME=zoomEdgar.war
TOMCAT_DEPLOY=/usr/share/tomcat8/webapps

LOG=$REPOSITORY/logs/restart.log
DATE=`date +%Y/%m/%d-%H:%M:%S`

cd $REPOSITORY
echo "CodeDepoly Tomcat Start $DATE" >> $LOG

echo -e  >> $LOG

TOMCAT_PID=`ps -ef | grep tomcat | grep -v grep | grep -v vi | awk '{print $2}'`

echo "[1] cuurent pid : $TOMCAT_PID" >> $LOG

echo "[2] stop"  >> $LOG
sudo service tomcat8 stop

echo "[3] war copy" >> $LOG
sudo cp $REPOSITORY/zip/$WAR_FILE_NAME $TOMCAT_DEPLOY

echo "[4] war chown" >> $LOG
sudo chown tomcat:tomcat $TOMCAT_DEPLOY/$WAR_FILE_NAME

echo "[5] start" >> $LOG
sudo service tomcat8 start

TOMCAT_PID=`ps -ef | grep tomcat | grep -v grep | grep -v vi | awk '{print $2}'`
echo "[6] restart PID : $TOMCAT_PID" >> $LOG

echo -e  >> $LOG

DATE=`date +%Y/%m/%d-%H:%M:%S`

echo "CodeDepoly Tomcat End   $DATE" >> $LOG

RESULT="\n\n"
echo -e $RESULT >> $LOG
