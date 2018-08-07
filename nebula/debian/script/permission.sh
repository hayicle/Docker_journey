#!/bin/bash
for x in $(seq 10 19)
do
	#Write_up	
	mkdir -p /home/flag$x/write_up
	chmod 700 /home/flag$x/write_up
	chown flag$x: /home/flag$x/write_up
	#enable color for user 10 -> 19
	echo "#enable color for current user" >> home/level$x/.bashrc
	echo "patch -f /home/level$x/.bashrc /script/bashrc_enable_color.patch & > /tmp/garbage" >> /root/.bashrc
	#hint automatically
	echo "#Hint automatically" >> /home/level$x/.bashrc
	echo "/script/Hint_auto.sh &" >> /home/level$x/.bashrc
	#Change directory immediately to flag$x
	echo "#Change to challenge home directory"
	echo "cd /home/flag$x" >> /home/level$x/.bashrc
	if [ $x == 12 -o $x == 16 -o $x == 17 ];
	then
	   	continue
   	fi
	#Enable suid for all binary file
	echo "chmod u+s /home/flag$x/flag$x" >> /root/.bashrc
done

for x in $(seq 0 9)
do 
	#Write_up
	mkdir -p /home/flag0$x/write_up
	chmod 700 /home/flag0$x/write_up
	chown flag0$x /home/flag0$x/write_up
	#enable bash color for user 0->9
	echo "#enable color for current user" >> /home/level0$x/.bashrc
	echo "patch -f /home/level0$x/.bashrc /script/bashrc_enable_color.patch & > /tmp/garbage" >> /root/.bashrc
	#hint automatically
	echo "#Hint automatically" >> /home/level0$x/.bashrc
	echo "/script/Hint_auto.sh &" >> /home/level0$x/.bashrc
	#Change directory immediately to flag$x
	echo "#Change to challenge home directory"
	echo "cd /home/flag0$x" >> /home/level0$x/.bashrc
	if [ $x == 0 -o $x == 3 -o $x == 5 -o $x == 6 -o $x == 7 -o $x == 8 ];
   	then 
		continue
   	fi
   	echo "chmod u+s /home/flag0$x/flag0$x" >> /root/.bashrc; 
done;

echo "chmod o+s /rofs/bin/.../flag00" >> /root/.bashrc
