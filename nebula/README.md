# Nebula


## Requirement

Install with ubuntu (docker & docker-compose)

```bash
sudo apt-get install -y docker
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```


## Build steps

```bash
git clone https://github.com/hayicle/Docker_journey
cd Docker_journey/nebula
docker-compose build
docker-compose up
docker-compose exec bash nebula
```


## Specific

Can go directly challenge via alias

```bash
root@86cb32b1c849:/# level1

                         -----------------[WARNING]---------------
 About
  There is a vulnerability in the below program that allows arbitrary programs to be executed, can you find it?
To do this level, log in as the level01 account with the password level01. Files for this level can be found in /home/flag01.

                         -----------------------------------------
level01@86cb32b1c849:/home/flag01$

level01@86cb32b1c849:/home/flag01$ alias | grep level
alias level0='su - level00'
alias level1='su - level01'
alias level10='su - level10'
alias level11='su - level11'
alias level12='su - level12'
alias level13='su - level13'
alias level14='su - level14'
alias level15='su - level15'
alias level16='su - level16'
alias level17='su - level17'
alias level18='su - level18'
alias level19='su - level19'
alias level2='su - level02'
alias level3='su - level03'
alias level4='su - level04'
alias level5='su - level05'
alias level6='su - level06'
alias level7='su - level07'
alias level8='su - level08'
alias level9='su - level09'
```

There are 3 hint in each challenge.. Will be appear in the terminal each hour.
```
level00@86cb32b1c849:/home/flag00$
                         -----------------[HINT]---------------
 You should run /etc/profile.d/motd_information_challenge.sh and read carefully the require ment ^^!

                         -----------------[HINT]---------------

```



ENJOY it  :)
