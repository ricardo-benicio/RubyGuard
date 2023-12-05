# Documentação Técnica - Projeto RubyGuard
## Introdução
O Projeto RubyGuard é uma aplicação backend desenvolvida para demonstrar a capacidade técnica e criativa do candidato, com ênfase especial na segurança e na consideração das vulnerabilidades típicas de aplicações backend.

### Gems de Autenticação - Devise e Devise-JWT
Para garantir uma autenticação robusta e segura, o RubyGuard utiliza as gems 'Devise' e 'Devise-JWT'. Abaixo, detalhamos a funcionalidade proporcionada por cada uma:

#### A gem 'Devise' é uma solução completa para autenticação de usuários no ambiente Ruby on Rails. Oferece funcionalidades essenciais, como login, registro, recuperação de senha e gerenciamento de sessão. Suas principais características incluem: 
- Flexibilidade de Configuração: Devise permite uma configuração flexível para atender às necessidades específicas do projeto.
- Gestão de Sessões: Controle de sessões de usuário, incluindo a capacidade de encerrar sessões remotamente.
- Segurança: Implementa boas práticas de segurança, incluindo hashes seguros para senhas e proteção contra ataques de força bruta.

#### A gem 'Devise-JWT' é uma extensão do Devise que adiciona suporte para JSON Web Tokens (JWT). JWT é um padrão aberto (RFC 7519) que oferece uma forma compacta e segura de representar informações entre duas partes. As principais características incluem:
- Token-Based Authentication: Utilização de tokens JWT para autenticação, proporcionando uma alternativa eficiente ao uso de sessões tradicionais.
- Escalabilidade e Desempenho: Redução do uso de recursos do servidor, tornando a autenticação mais escalável.
- Expiração de Token: Configuração de expiração para tokens, aumentando a segurança da aplicação.

## Configuração do Ambiente
- Para configurar o ambiente de desenvolvimento, siga as instruções abaixo:

### Requisitos:
- Ruby 3.2.2
- Rails 7.1.2
- PostgreSQL

### Instalação de Dependências:
```bash
bundle install
npm install
exec foreman start -f Procfile.dev
```

### Configuração do Banco de Dados:
```bash
rails db:create db:migrate
```

## Segurança e Vulnerabilidade
- O RubyGuard adota diversas práticas de segurança para proteger a aplicação contra vulnerabilidades comuns. Alguns pontos destacados incluem:

### Autenticação Segura:
- Utilização da gem Devise para garantir autenticação robusta. A lógica de autenticação é testada de maneira abrangente para evitar falhas de segurança. 

### Proteção contra CSRF:
- A aplicação utiliza o mecanismo padrão do Rails para proteção contra ataques CSRF.

### Logs de Auditoria:
- Implementação de logs para eventos importantes, como login bem-sucedido.

### Segurança da Sessão:
- A sessão do usuário é regenerada após autenticação para evitar manipulações indevidas.

### Limitação de Tentativas de Login:
- Mecanismo para detectar e bloquear tentativas repetidas de login.

## Testes
O RubyGuard possui testes automatizados que cobrem:

Modelos, controladores e serviços.
```bash
    bundle exec rspec
```