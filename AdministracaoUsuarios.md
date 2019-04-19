> Adicionar usuário ao grupo sudo

`$ usermod -aG sudo username`

> Elevar o usuário para root temporariamente

`$ sudo some-command`

&nbsp;

> Executar **sudo** sem digitar a senha

`$ sudo visudo`

> Arquivo do sudo: /etc/sudoers

`username ALL=(ALL) NOPASSWD: ALL`

$nbsp

> Definir senha do **root**

`$ sudo passwd root`

> Desativar root

`$ sudo passwd -1 root`


