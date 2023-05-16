# Instalar Pila LAMP I en Servidor Amazon Linux 2023

1- #Instalar la última versión de Apache web server y PHP para amazon linux 2023
   sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel
   
2- #Instalar MariaDB software packages#
  sudo dnf install mariadb105-server
  
3- #Arranca el servidor Apache
  sudo systemctl start httpd

4- #Usar systemctl para configurar el servidor Apache
  sudo systemctl enable httpd
  
5- #Crea un fichero llamado phpinfo.php en /var/www/html
  echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php  #IMPORTANTE, si no coge el comando, arrancarlo con el usuario root
  
6- #Comprueba que el servidor Apache funciona y que PHP esta correctamente instalado (visita la DNS publica seguido de phpinfo.php). 
  http://ec2-54-146-223-36.compute-1.amazonaws.com/phpinfo.php
