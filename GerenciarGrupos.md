# Grupos

### Armazena todos os grupos do sistema: `/etc/group`

Usamos os grupos para configurar **permissões de acesso** a arquivos e **pastas aos usuários** no sistema, além de configurar o acesso a discos e impressoras. As permissões do sistema de arquivos do UNIX são divididas em três categorias: 

1. usuário (proprietário)
2. grupo
3. outros.

O arquivo **/etc/group** é de propriedade do usuário root, e pode ser lido por qualquer usuário. 

### Permissões de acesso

Um grupo por linha. As informações são definidas em campos (colunas) separadas por dois-pontos (:) da seguinte forma:

cdrom​:x24:leandro

1. cdrom: Nome do grupo
2. x: Senha. Útil para implementar grupos com privilégios
3. 24: GID (Group Identification), número de identificação do grupo.
4. leandro: Lista de usuários que são membros do grupo. 

> Os nomes de usuário são separados por vírgulas.

### Adicionamos usuários a grupos no Linux para realizar tarefas

1. Gerenciar e Monitorar usuários
2. Compartilhar ou negar acesso a arquivos e diretórios com outros usuários
3. Compartilhar discos e impressoras com outros usuários
4. Dar acesso administrativo a arquivos especiais para determinados usuários (delegação).

### Exibir informações

`$ groups leandro`

> O grupo leandro pertence a:
>
> leandro adm cdrom sudo dip plugdev lpadmin sambashare

#### Visualizar o GID do grupo

`$ id -g leandro`

>  Com opção -G podemos ver os GIDs de todos os grupos dos quais o usuário é membro

`$ id -G leandro`



### Adicionar e remover usuários de grupos com o comando 

> Adicionar

`$ gpasswd -a leandro nomegrupo`

> Remover

`$ gpasswd -d leandro nomegrupo`



### Adicionar e remover grupos

> Adicionar

`$ addgroup nomegrupo`

> Remover

`$ groupdel nomegrupo`