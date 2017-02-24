#!/bin/sh

. /etc/rrdweather.conf

PATH=/usr/bin:/bin

# on each run, check if we need to build RRD database files
for city in $ZIPS
do
	unit=`echo ${city} | awk -F'-' '{print $1}'`
	city=sed -e "s/[em]-//g"
        if [ ! -d ${RRDDIR}/${city} ]
	then
                /usr/share/rrdweather/db_builder.sh ${city} ${unit}
	else
		/usr/share/rrdweather/db_update.sh
        fi
done

exit 0
