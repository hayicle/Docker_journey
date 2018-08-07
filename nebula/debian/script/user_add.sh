#!/bin/sh

#Add user
function adduser_nebula()
{
	users_list="nebula level00 level01 level02 level03 level04 level05 level06 level07 level08 level09 level10 level11 level12 level13 level14 level15 level16 level17 level18 level19"
	users2_list="flag00 flag01 flag02 flag03 flag04 flag05 flag06 flag07 flag08 flag09 flag10 flag11 flag12 flag13 flag14 flag15 flag16 flag17 flag18 flag19"

	for us in $users_list
	do
		useradd $us -p `openssl passwd -1 $us` -s /bin/bash -d /home/$us
		mkhomedir_helper $us
	done

	for us in $users2_list
	do
		#level06
		if [ $us = 'flag06' ]
		then
			useradd $us -p ueqwOCnSGdsuM -s /bin/bash -d /home/$us
		else
			useradd $us -p $(openssl passwd -1 `pwgen -1`) -s /bin/bash -d /home/$us
		fi
		mkhomedir_helper $us
	done
}

#Del user
function deluser_nebula()
{
	users_list="level0 level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 level13 level14 level15 level16 level17 level18 level19"
	users2_list="flag0 flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12 flag13 flag14 flag15 flag16 flag17 flag18 flag19"

	for us in $users_list
	do
		userdel $us
		rm -r /home/$us
	done

	for us in $users2_list
	do
		userdel $us
		rm -r /home/$us
	done
}

adduser_nebula
#deluser_nebula
