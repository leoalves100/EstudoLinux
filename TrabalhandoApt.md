# Trabalhando com APT

### Comandos
```
-h #ajuda 
-d #baixar arquivos apenas, não instalar 
-f #conserta erros de instalações de pacotes 
-s #não agir, apenas simular operação 
-y #assume `sim' para todas as perguntas 
-u #mostrar pacotes que serão atualizados também
``` 

## Limpar cache
```
#Local onde fica armazenado arquivos .deb baixados
/var/cache/apt/archives

#Remover todos os pacotes do cache
#Exceto os arquivos de lock
$ sudo apt clean

#Remover apenas pacotes antigos
$ sudo apt autoclean
```
&nbsp;

## Reinstalar pacote
```
$ sudo apt-get --reinstall install nomepacote
```

## Remover pacote e suas dependência
```
$ sudo apt remove nomepacote 

#remover configurações também
$ sudo apt --purge remove nomepacote
```

## Atualizar pacotes
```
$ sudo apt -u upgrade  

#return = kept back
#há novas atualizações para o pacote, porém não é possível instalar

#Atualizar pacote individualmente
$ sudo apt upgrade nomepacote
```
&nbsp;

## Atualizar a distribuição
```
$ sudo apt dist-upgrade
```
&nbsp;

## Instalar pacotes
```
$ sudo apt install nomepacote

#instalar versão específica do pacote
$ sudo apt install pacote=versāo
```

## Manter um versão específica do programa 
````
#Editar arquivo
/etc/apt/preferences

#Formato do arquivo
Package: chromium-browser 
Pin: version 72.0.3626.121*
Pin-Priority: <prioridade do pin>

#Pin: version, release, origin
````

## Verificar quais pacotes podem ser atualizados
```
$ apt-show-versions 
```
&nbsp;

# Buscas de pacotes
```
#Busca pacote
$ apt search nomepacote

#Busca informações do pacote
$ apt show nomepacote

#Informação geral do pacote
$ apt showpkg nomepacote

#Visualizar as dependências do pacote
$ apt depends nomepacote

#Buscar pacote pelo nome
$ dpkg -l | grep nomepacote
#Realizar busca dessa forma, pode quebrar o pacote

#Segunda forma
$ COLUMNS=132 dpkg -l | grep nomepacote

#Terceira forma
$ apt search "nomepacote"
```
&nbsp;

# Como instalar pacotes "on demand"




