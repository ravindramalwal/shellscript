#!/bin/bash

. .bash_profile

APP_NAME=$1
export TODAYS_DATE=`date '+%m-%d-%y'`
export GG_BACKUP_LOC=/u02/ggbackup/dirprm"_$TODAYS_DATE"


if [ "$APP_NAME" == "UPP" ]
then
    echo "Application_Name: ${APP_NAME}"
    echo "oracle database name ${ORACLE_SID}"
    echo "GG par file backup starting on date => ${TODAYS_DATE}"
    echo "GG Par file backup location ==: ${GG_BACKUP_LOC}"
    mkdir $GG_BACKUP_LOC
    cd $GG_HOME/dirprm
    cp *.prm $GG_BACKUP_LOC
fi

if [ "$APP_NAME" == "re4" ]
then
    echo "Application_Name: ${APP_NAME}"
        echo "GG par file backup starting on date => ${TODAYS_DATE}"
fi
