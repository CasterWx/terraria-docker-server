FROM centos:7
MAINTAINER AntzUhl Github:CasterWx <antzuhl1998@gmail.com>
USER root
RUN yum -y update
RUN yum -y install screen

# 开放端口
EXPOSE 7777

RUN mkdir /opt/terraria/
ADD terraria/ /opt/terraria/

RUN chmod 775 /opt/terraria/terra_script.sh 

CMD ["./opt/terraria/terra_script.sh","start"]
