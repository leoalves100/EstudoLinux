# Instalar o Apache2
    $ sudo apt install apache2

## Adicionar ServerName
    $ sudo nano /etc/apache2/apache2.conf
    
    #Incluir na ultima linha
    ServerName 127.0.0.1

## Verificar as configurações 
    $ sudo apache2ctl configtest

## Pasta padrão do Apache2
    /var/www/html

## Modificar permissões de acesso **index.html**
    $ sudo chmod 777 /var/www/index.html

&nbsp;

# Alterar pasta padrão do servidor
    $ sudo nano /etc/apache2/apache2.conf

    <Directory /pasta/de/sua/preferencia>
              Options Indexes FollowSymLinks
              AllowOverride All
              Require all granted
    </Directory>

    #Modificar arquivo 000-default.conf

    DocumentRoot /diretorio/colocado/em/apache2.conf

# Reinicie o Apache2
    $ sudo service apache2 restart