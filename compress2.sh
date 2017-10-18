#!/bin/bash

DATE=$(date +%Y%m%d)

FOLDER_BACKUP="$1"

#HASIL_BACKUP="


tar -czvf $FOLDER_BACKUP+$DATE.tar.gz $FOLDER_BACKUP
