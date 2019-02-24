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

##Limpar cache
```
#Local o fica armazenado arquivos .deb baixados
/var/cache/apt/archives

#Remover todos os pacotes do cache
$ sudo apt clean
#Exceto os arquivos de lock

#Remover apenas pacotes antigos
$ sudo apt autoclean
```

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

#param -u mostra as atualizações que será feitas 

#return kept back
#há novas atualizações para o pacote, porém não é possível instalar
```
### Atualizar pacote individualmente
```
$ sudo apt upgrade nomepacote
```

## Atualizar a distribuição
```
$ sudo apt dist-upgrade
```

