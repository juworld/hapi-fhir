FROM mysql:5.6
COPY ./my.cnf /etc/mysql/conf.d/

# copies init script over
COPY ./init.sh  /usr/local/bin

RUN apt-get update \
  && apt-get install -y apt-utils mydumper vim

## set up mysql users
# ADD ./db/*.sql /docker-entrypoint-initdb.d/ 

# update all the permissions
# RUN chmod -R 775 /usr/local/bin && \
#     chown root /usr/local/bin/* 

# make sure it is writeable
# RUN chmod -R 777 /home/ && \
#     chmod -R 777 /docker-entrypoint-initdb.d/

# RUN init.sh

# EXPOSE 3306
