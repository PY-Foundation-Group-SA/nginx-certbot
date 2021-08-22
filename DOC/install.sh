#!/bin/bash

############################  HTTPS CERTBOT  ##########################
#######################################################################
############################  HTTPS CERTBOT  ##########################
#######################################################################
ssh marcelu@139.162.75.245 -p 2898 

#####  HTTPS
ssh marcelu@139.162.75.245 -p 2898 
hostnamectl set-hostname pyfoundation.org

# LINODE ADD DOMAIN NEW PYFOUNDATION.ORG WWW.PYFOUNDATION.ORG A AAAA
www.pyfoundation.org pyfoundation.org
# GOTO GODADDY ADD 
    ns1.linode.com
    ns2.linode.com
    ns3.linode.com
    ns4.linode.com
    ns5.linode.com
    
sudo ufw allow http
sudo ufw allow https
sudo ufw status
sudo apt update

#install docker docker-compose pm2 nodejs npm yarn nvm ufw
git clone https://github.com/PY-Foundation-Group-SA/nginx-certbot.git
cd nginx-certbot/

nano data/app.conf 
#change all example.org pyfoundation.org
nano init-letsencrypt.sh
#change all example.org pyfoundation.org
#add your mail projetoslinux@gmail.com

#in vscode ssh add ssh command and save and open ssh marcelu@139.162.75.245 -p 2898
sudo chmod +x init-letsencrypt.sh 
sudo ./init-letsencrypt.sh

# ADD YOUR SITE WWW
sudo nano data/certbot/www/index.html

<html>
<head></head>
<body>         
<h1>Esta es mi página index.html</h1>         
<p>Aquí va todo mi contenido de la página inicial que debe cargar mi dominio</p> 
</body>
</html>

cd .. # in nginx-certbot  root folder

docker-compose up

############################  HTTPS CERTBOT  ##########################
#######################################################################
############################  HTTPS CERTBOT  ##########################
#######################################################################
