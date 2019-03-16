# Requisitos mínimos para utilização 

1. [Heroku Account](https://signup.heroku.com/)
2. PHP
3. [Composer](https://getcomposer.org/download/)
4. [Git](https://git-scm.com/downloads)

> Para facilitar o uso do GIT. Melhores [Git Clients](https://sempreupdate.com.br/os-melhores-git-clientes-para-linux/) 

&nbsp;

# Download do Heroku CLI
[Link](https://devcenter.heroku.com/articles/getting-started-with-php#set-up)

## Realizar login através do shell
```
$ heroku login
```
> O navegador será aberto para envio das credenciais

&nbsp;

# Preparando o aplicativo

## Utilizando aplicativo de teste fornecido pela heroku

```
# Clonar repositório
$ git clone https://github.com/heroku/php-getting-started.git

#Entrar na pasta do aplicativo
$ cd php-getting-started
```

> Agora você tem um repositório git em funcionamento que contém um aplicativo simples e também um arquivo **composer.json**. Certifique-se de ter instalado o Composer . O Heroku usa o Composer para gerenciamento de dependências em seus projetos PHP, e o **composer.json** indica ao Heroku que seu aplicativo está escrito em PHP.

&nbsp;

# Crie um aplicativo no heroku, para ele preparar o ambiente de deploy

```
$ heroku create
```

> Quando você cria um aplicativo, um git remoto (chamado heroku) também é criado e associado ao seu repositório git local.

> O Heroku gera um nome aleatório para o seu aplicativo ou você pode passar um parâmetro para especificar o nome do seu próprio aplicativo.

```
#Especificar nome
$ heroku apps:create NomeDoAplicativo
```

&nbsp;

# Implementar seu código na nuvem do Heroku
> O aplicativo agora está implantado
```
$ git push heroku master
```

>  Certifique-se de que pelo menos uma instância do aplicativo esteja em execução

```
$ heroku ps:scale web=1
```

> Agora, visite o aplicativo na URL gerado pelo nome do aplicativo. Como um atalho prático, você pode abrir o site da seguinte maneira:

```
$ heroku open
```
> Assim você acabou de implantar seu primeiro app para deploy

&nbsp;

# Streaming dos logs - Visualização em tempo real os acessos a sua aplicação
```
$ heroku logs -t
```

&nbsp;

# Resolvendo erro para futuros apps criados

> Como todo servidor busca a página index. Ao tentar acessar o link padrão, vai ser exibido esse erro.

```
Forbidden

You don't have permission to access / on this server.
```

> Para contorna o problema, adicione na URL /NomeDoArquivo.php. Dessa forma, será possível exibir o script PHP que acabou de ser enviado.

&nbsp;

# Observações

> Todo projeto PHP precisa tem o arquivo **composer.json**, para que o heroku possa satisfazer as dependências da aplicação. Recomendo essa **[playlist](https://www.youtube.com/watch?v=_n57YVUVT2A&list=PLVSNL1PHDWvSrVzXyKxBc5cPM4sU7-c2T)** sobre COMPOSER

