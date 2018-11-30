#!/bin/bash

#  /usr/bin/myloader -h 127.0.0.1 --directory=/home/databases/import --overwrite-tables --user=root --password=root

# cp /home/databases/import/* /home/databases/updated

# for f in /home/databases/updated/*-schema-*
# do
#         echo "Need to modify file - $f"
#         tmp=${f##*/}   # remove prefix ending in "_"
#         table_name=${tmp%%-*}   # remove suffix starting with "_"

#         echo ""
#         echo "    add 'use $table_name' to $f"
#         echo ""
#         echo ""

#         echo "" >> $f
#         echo "#change table" >> $f
#         echo "use $table_name" >> $f
# done

# cat /home/databases/updated/*.sql >> /docker-entrypoint-initdb.d/carespan.sql
