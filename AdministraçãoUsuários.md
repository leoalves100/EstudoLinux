# Trabalhando com **sudo**
```
#Adicionar usuário ao grupo sudo
$ usermod -aG sudo username

#Elevar o usuário para root temporariamente
$ sudo some-command
```

# Executar **sudo** sem digitar a senha
```
$ sudo visudo

#Arquivo presente em /etc/sudoers

#Adicionar linha
username ALL=(ALL) NOPASSWD: ALL
```

&nbsp;

# Ativar conta de usuário **root**
```
$ sudo passwd root

#Desativar root
$ sudo passwd -1 root
```

