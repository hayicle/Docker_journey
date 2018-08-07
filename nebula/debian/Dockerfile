FROM ubuntu:14.04

RUN "sh" "-c" "echo nameserver 8.8.8.8 >> /etc/resolv.conf"

RUN apt-get update
#INSTALLATION requiresment package

# Supervisor, Cron & Mysql client & pwgen & openssh-server & vim & man & locate
RUN apt-get update \
    && apt-get install -y --no-install-recommends wget cron supervisor gnupg apt-transport-https ca-certificates mysql-client pwgen openssh-server vim man mlocate \
	&& updatedb \
    && rm -f /etc/cron.*/*
#Strace, ltrace compiler
RUN apt-get install -y strace ltrace gdb gcc
#Run 32bit application
#https://askubuntu.com/questions/454253/how-to-run-32-bit-app-in-ubuntu-64-bit
RUN dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 multiarch-support gcc-multilib
#Install require for challenge 7
RUN apt-get install -y git gcc make net-tools
#Install requires for challenge 8
RUN apt-get install -y tcpflow bsdmainutils 


#RUN SCRIPT setup environment

#Prepare
COPY script /script/
COPY src/.bashrc /script/
#Description of challege
COPY script/motd_information_challenge.sh /etc/profile.d/
COPY script/color.sh /etc/profile.d/
#For quick interaction alias EXP: level1 == su - level1
COPY script/alias.sh /etc/profile.d/
#Script add user 
RUN bash /script/user_add.sh
#bashrc color
COPY src/level00/.bashrc /root 
RUN echo "source /etc/profile.d/*"  >> /root/.bashrc \
	&& echo "ps -fauxww | grep ^level* | awk '{print $2}' | xargs kill" >> /root/.bashrc
#SUID permission set for all challenge , force color bash for user level00 -> 19 , Hint auto for each challenge , change directory immediately to following challenge
RUN /script/permission.sh
#For ssh_config enable login for users
RUN patch -f /etc/ssh/sshd_config /script/ssh_config.patch \
	&& mkdir -p /var/run/sshd

#SETUP challenge specific
#level0
RUN mkdir -p /rofs/bin/... 
COPY src/level00/flag00 /rofs/bin/.../
RUN chmod 750 /rofs/bin/.../flag00 \
	&& chown flag00:level00 /rofs/bin/.../flag00
#level1
COPY src/flag01/flag01 /home/flag01/flag01
RUN chmod 750 /home/flag01/flag01 \
	&& chown flag01:level01 /home/flag01/flag01
#level2
COPY src/flag02/flag02 /home/flag02/flag02
RUN chmod 750 /home/flag02/flag02 \
	&& chown flag02:level02 /home/flag02/flag02
#level3
COPY src/flag03/writable.sh /home/flag03/
RUN mkdir -p /home/flag03/writable.d
#Crontab
COPY src/level03/flag03 /var/spool/cron/crontabs/
RUN chmod 777 /home/flag03/writable.d \
	&& chmod 755 /home/flag03/writable.sh \
	&& chown flag03:crontab /var/spool/cron/crontabs/flag03
#level4
COPY src/flag04/ /home/flag04/
RUN chmod 750 /home/flag04/flag04 \
	&& chmod 600 /home/flag04/token \
	&& chown flag04:level04 /home/flag04/flag04 \
	&& chown flag04: /home/flag04/token
#level5
COPY src/flag05/.backup /home/flag05/.backup
COPY src/flag05/.ssh /home/flag05/.ssh
RUN chmod 755 /home/flag05/.backup \
	&& chmod 700 /home/flag05/.ssh	\
	&& chown -R flag05: /home/flag05/
#level6 : 
RUN apt-get install -y john openssh-server
#level7 : WEB THTTPD
RUN groupadd www \
	&& mkdir -p /usr/local/man/man1/ 
RUN git clone https://github.com/wlangstroth/thttpd /git/thttpd \
	&& cd /git/thttpd \
	&& ./configure \
	&& make \
	&& make install 
COPY src/flag07/ /home/flag07/
RUN chmod 644 /home/flag07/thttpd.conf \
	&& chmod 755 /home/flag07/index.cgi \
	&& chown root:	/home/flag07/thttpd.conf\
	&& chown root: /home/flag07/index.cgi
#level8 : PCAPFILE
COPY src/flag08/ /home/flag08/
RUN chmod 644 /home/flag08/capture.pcap \
	&& chown root: /home/flag08/capture.pcap
#level9
RUN apt-get install -y php5
COPY src/flag09/ /home/flag09/
RUN chmod 750 /home/flag09/flag09 \
	&& chmod 644 /home/flag09/flag09.php \
	&& chown flag09:level09 /home/flag09/flag09 \
	&& chown root: /home/flag09/flag09.php
#level10
COPY src/flag10/ /home/flag10/
RUN chmod 750 /home/flag10/flag10 \
	&& chmod 600 /home/flag10/token \
	&& chown flag10:level10 /home/flag10/flag10 \
	&& chown flag10: /home/flag10/token
#level11
COPY src/flag11/ /home/flag11/
RUN chmod 750 /home/flag11/flag11 \
	&& chown flag11:level11 /home/flag11/flag11 \
	&& chown -R flag11:flag11 /home/flag11/.ssh
#level12
RUN apt-get install -y lua50
COPY src/flag12/ /home/flag12/
RUN chmod 644 /home/flag12/flag12.lua \
	&& chown root: /home/flag12/flag12.lua
#level13
COPY src/flag13/ /home/flag13/
RUN chmod 750 /home/flag13/flag13 \
	&& chown flag13: /home/flag13/flag13
#level14
COPY src/flag14/ /home/flag14/
RUN chmod 750 /home/flag14/flag14 \
	&& chown flag14: /home/flag14/flag14
#level15
COPY src/flag15/ /home/flag15/
RUN chmod 750 /home/flag15/flag15 \ 
	&& chown flag15:level15 /home/flag15/flag15
#level16
COPY src/flag16/ /home/flag16/
RUN chmod 755 /home/flag16/index.cgi \
	&& chmod 644 /home/flag16/userdb.txt \
	&& chmod 644 /home/flag16/thttpd.conf \
	&& chown root: /home/flag16/*
#level17
COPY src/flag17/ /home/flag17
RUN chmod 644 /home/flag17/flag17.py \
	&& chown root: /home/flag17/flag17.py
#level18
COPY src/flag18 /home/flag18
RUN chmod 750 /home/flag18/flag18 \
	&& chmod 600 /home/flag18/password \
	&& chown flag18:level18 /home/flag18/flag18 \
	&& chown flag18: /home/flag18/password
#level19
COPY src/flag19/ /home/flag19
RUN chmod 750 /home/flag19/flag19 \
	&& chown flag19:level19 /home/flag19/flag19

# Copy configuration docker
COPY script/run.sh /
COPY supervisor.d/* /etc/supervisor/conf.d/
CMD ["/run.sh"]
