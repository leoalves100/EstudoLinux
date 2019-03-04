# Utilizando UFW


## Habilitar 
    ufw enable

## Verificar status + regras
    ufw status 

## Regras + número referente
    ufw status numbered

# Criar regras

## Habilitar Acesso
    1. ufw allow 80(TCP/UDP) 

    # Forma alternativa

    2. ufw allow 80/TCP

## Deletar Regra
    1. ufw delete allow 80
    2. ufw delete id regra

## Desativar acesso 
    ufw deny 80(TCP/UDP)
    ufw deny (TCP/UDP)

### Bloquear
    # Saida
    ufw deny out 80

    # Entrada
    ufw deny in 80

## Bloquear ip
    ufw deny from 192.168.1.29

### Bloquear IP e protocolo 
    ufw deny from 192.168.1.29 to any port 80


