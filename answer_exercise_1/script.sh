#!/bin/bash
backupYear=$(date +'%Y')
backupMonth=$(date +'%m')
backupDay=$(date +'%d')
week=$(date +'%u')

mkdir -p $PWD/backup/pastor/$backupYear/$backupMonth/$backupDay && 
cp nginx_requests_total.txt $_/nginx_log_requests_$backupYear$backupMonth$backupDay.log &&
if [ $week == 7 ]
then
    i=6 &&
    while [ $i -ge 0 ]
    do
        TEMP_DATE_YEAR=$(date +'%Y' -d "-$i days")
        TEMP_DATE_MONTH=$(date +'%m' -d "-$i days")
        TEMP_DATE_DAY=$(date +'%d' -d "-$i days")

        tar -vuf $PWD/backup/pastor/$backupYear/$backupMonth/$backupDay/nginx_logs_$backupYear$backupMonth$backupDay.tar.gz -C \
        $PWD/backup/pastor/$TEMP_DATE_YEAR/$TEMP_DATE_MONTH/$TEMP_DATE_DAY .
        
        i=`expr $i - 1`
    done
fi