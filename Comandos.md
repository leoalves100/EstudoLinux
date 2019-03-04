# Comandos Úteis
### Faz uma lista de todos os pacotes instalados

```
$ dpkg --get-selections > Lista-Pacotes.txt 
```

### Pesquisa por pacote específico 

```
$ dpkg -l | grep nomepacote
```

### Listar todos os serviços em execução 
```
$ sudo service --status-all
```
# PROCESSOS DE USUÁRIO EM SEGUNDO PLANO E COMO MANIPULÁ-LOS

1. **fg** : Coloca o processo em primeiro plano (foreground)
2. **bg** : Coloca o processo em segundo plano (background)
3. **jobs** : Lista os processos correndo em segundo plano, ou apenas pausados/parados
4. **&** : Colocado ao final de um comando, faz com que o mesmo rode em segundo plano desde o início
5. **Ctrl+c** : Mata o processo atual ativo
6. **Ctrl+z** : Pausa/para o processo atual ativo