#!/bin/bash

#users="level0 level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 level13 level14 level15 level16 level17 level18 level19"
level00="This level requires you to find a Set User ID program that will run as the “flag00” account. You could also find this by carefully looking in top level directories in / for suspicious looking directories.
Alternatively, look at the find man page.
To access this level, log in as level00 with the password of level00."

level01="There is a vulnerability in the below program that allows arbitrary programs to be executed, can you find it?
To do this level, log in as the level01 account with the password level01. Files for this level can be found in /home/flag01."

level02="There is a vulnerability in the below program that allows arbitrary programs to be executed, can you find it?
To do this level, log in as the level02 account with the password level02. Files for this level can be found in /home/flag02."

level03="Check the home directory of flag03 and take note of the files there.
There is a crontab that is called every couple of minutes.
To do this level, log in as the level03 account with the password level03. Files for this level can be found in /home/flag03."

level04="This level requires you to read the token file, but the code restricts the files that can be read. Find a way to bypass it :)
To do this level, log in as the level04 account with the password level04. Files for this level can be found in /home/flag04."

level05="Check the flag05 home directory. You are looking for weak directory permissions
To do this level, log in as the level05 account with the password level05. Files for this level can be found in /home/flag05."

level06="The flag06 account credentials came from a legacy unix system.
To do this level, log in as the level06 account with the password level06. Files for this level can be found in /home/flag06."

level07="The flag07 user was writing their very first perl program that allowed them to ping hosts to see if they were reachable from the web server.
To do this level, log in as the level07 account with the password level07. Files for this level can be found in /home/flag07."

level08="World readable files strike again. Check what that user was up to, and use it to log into flag08 account.
To do this level, log in as the level08 account with the password level08. Files for this level can be found in /home/flag08."

level09="There’s a C setuid wrapper for some vulnerable PHP code…
To do this level, log in as the level09 account with the password level09. Files for this level can be found in /home/flag09."

level10="The setuid binary at /home/flag10/flag10 binary will upload any file given, as long as it meets the requirements of the access() system call.
To do this level, log in as the level10 account with the password level10. Files for this level can be found in /home/flag10."

level11="The /home/flag11/flag11 binary processes standard input and executes a shell command.
There are two ways of completing this level, you may wish to do both :-)
To do this level, log in as the level11 account with the password level11. Files for this level can be found in /home/flag11.
Source c"

level12="There is a backdoor process listening on port 50001.
To do this level, log in as the level12 account with the password level12. Files for this level can be found in /home/flag12."

level13="There is a security check that prevents the program from continuing execution if the user invoking it does not match a specific user id.
To do this level, log in as the level13 account with the password level13. Files for this level can be found in /home/flag13."

level14="This program resides in /home/flag14/flag14. It encrypts input and writes it to standard output. An encrypted token file is also in that home directory, decrypt it :)
To do this level, log in as the level14 account with the password level14. Files for this level can be found in /home/flag14."

level15="strace the binary at /home/flag15/flag15 and see if you spot anything out of the ordinary.
You may wish to review how to “compile a shared library in linux” and how the libraries are loaded and processed by reviewing the dlopen manpage in depth.
Clean up after yourself :)
To do this level, log in as the level15 account with the password level15. Files for this level can be found in /home/flag15."

level16="There is a perl script running on port 1616.
To do this level, log in as the level16 account with the password level16. Files for this level can be found in /home/flag16."

level17="There is a python script listening on port 10007 that contains a vulnerability.
To do this level, log in as the level17 account with the password level17. Files for this level can be found in /home/flag17."

level18="Analyse the C program, and look for vulnerabilities in the program. There is an easy way to solve this level, an intermediate way to solve it, and a more difficult/unreliable way to solve it.
To do this level, log in as the level18 account with the password level18. Files for this level can be found in /home/flag18."

level19="There is a flaw in the below program in how it operates.
To do this level, log in as the level19 account with the password level19. Files for this level can be found in /home/flag19."

. /script/color.sh


case `whoami` in
	level00)

		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level00 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level01)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level01 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level02)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray" $level02 $No_color
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level03)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level03 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level04)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level04 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level05)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level05 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level06)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level06 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level07)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level07 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level08)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level08 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level09)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level09 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level10)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level10 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level11)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level11 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level12)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level12 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level13)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level13 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level14)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level14 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level15)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level15 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level16)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level16 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level17)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level17 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level18)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level18 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	level19)
		echo -e " \n$Yellow $Blink \t\t\t -----------------[WARNING]--------------- $reset"
		echo -e "$Red About \n $Dark_Gray $level19 $No_color"
		echo -e " \n$Yellow $Blink \t\t\t ----------------------------------------- $reset";;
	justaname)
		echo -e "$Light_Cyan Why we need a name, when we are ourself :P";;
esac
