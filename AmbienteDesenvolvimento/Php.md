# Instalando o Xdebug
    $ sudo apt install php-xdebug

# Habilitando o Xdebug

## Crie um arquivo php com a seguinte função

    phpinfo();

## Copie o conteúdo da página e cole no site

[Xdebug](https://xdebug.org/wizard.php)

# Config Xdebug

    .so  = Linux
    .dll = Windows

# Copie o conteúdo para
**/etc/php/7.2/apache2/php.ini**
```
[xdebug]
zend_extension = /usr/lib/php/20170718/xdebug.so
;profilling
 ;xdebug.profiler_enable = 1
 ;xdebug.extended_info = 0
 ;xdebug.remote_enable = 0
 ;xdebug.profiler_output_dir=/tmp
;debug
xdebug.remote_enable=1
xdebug.remote_handler=dbgp
xdebug.remote_mode=req
xdebug.remote_host="localhost"
xdebug.remote_port=9000
xdebug.extended_info=1
xdebug.remote_autostart=1
```

&nbsp;

# Arquivo de configuração do PHP
    /etc/php/7.2/apache2/php.ini

&nbsp;
# Pasta onde fica as bibliotecas do php
```
/usr/lib/php/20170718
``` 

# Ativando uma extensão
```
#Criar arquivo ini na pasta
/etc/php/7.2/mods-available/redis.ini

#Colocar o conteúdo dentro do arquivo ini
extension=redis.so

#Criar link simbólico dentro da pasta 
/etc/php/7.2/apache2/conf.d/

ln -s /etc/php/7.2/mods-available/redis.ini 20-redis.ini
```
