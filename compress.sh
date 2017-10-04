#!/bin/bash
set -e

DATE=$(date +%Y%m%d)


#FOLDER_BACKUP=$1


##if [[ -n "${FOLDER_BACKUP/[]*\n/}"]]
if [ -z "$1" ];
then
    echo "Tolong di input Nama folder atau Nama File yang di backup"
    echo " ./compress.sh NAMA_FOLDER_atau_NAMA_FILE"
    echo " contoh: "
    echo " ./compress.sh /var/www/html"

#    tar -czvf $FOLDER_BACKUP_$DATE.tar.gz $FOLDER_BACKUP
#elif [[ -f $FOLDER_BACKUP_$DATE.tar.gz ]];
#then
#    echo "file sudah ada"
else
#    echo "Tolong di input Nama folder atau Nama File yang di backup"
#    echo " ./compress.sh NAMA_FOLDER_atau_NAMA_FILE"
#    echo " contoh: "
#    echo " ./compress.sh /var/www/html"
    if [  -f $1_$DATE.tar.gz ];
    then
      echo "file sudah ada"
      exit 1 
   # else
    # tar -czvf $1_$DATE.tar.gz $FOLDER_BACKUP
    fi
   tar -czvf $1_$DATE.tar.gz $1

fi
#HASIL_BACKUP="


##tar -czvf $FOLDER_BACKUP+$DATE.tar.gz $FOLDER_BACKUP
