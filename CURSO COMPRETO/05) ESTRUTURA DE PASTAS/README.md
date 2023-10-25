# ESTRUTURA DE PASTAS
A estrutura de pastas no Laravel segue um padrão bem organizado que ajuda a manter a clareza e a separação de preocupações no seu projeto. Aqui está uma visão geral da estrutura de pastas típica em um projeto Laravel:

```
- app/
  - Http/
    - Controllers/
    - Middleware/
  - Providers/
- bootstrap/
- config/
- database/
  - migrations/
  - seeds/
- public/
- resources/
  - views/
  - assets/
- routes/
- storage/
  - app/
  - framework/
  - logs/
- tests/
- vendor/
- .env
- .env.example
- .gitignore
- composer.json
- composer.lock
- phpunit.xml
- README.md
```

Aqui estão as descrições das principais pastas e arquivos:

- `app/`: Contém a maior parte do código da aplicação, incluindo controllers, middleware, models e outros componentes.

- `bootstrap/`: Contém os arquivos de inicialização da aplicação.

- `config/`: Armazena arquivos de configuração para sua aplicação.

- `database/`: Contém arquivos de migração e sementes (seeders) para o banco de dados.

- `public/`: O diretório raiz do servidor web, onde você coloca os arquivos acessíveis publicamente, como imagens, folhas de estilo e JavaScript.

- `resources/`: Contém arquivos de recursos não processados, como templates (views) e ativos (assets).

- `routes/`: Define as rotas da aplicação.

- `storage/`: Armazena arquivos gerados dinamicamente, como logs e caches.

- `tests/`: Contém arquivos de testes para sua aplicação.

- `vendor/`: Onde o Composer armazena as dependências do projeto.

- `.env`: Arquivo de ambiente que armazena variáveis de ambiente para configurações específicas do ambiente (por exemplo, configurações de banco de dados).

- `.env.example`: Um exemplo do arquivo `.env`, que você pode usar como modelo para configurar suas variáveis de ambiente.

- `composer.json` e `composer.lock`: Arquivos usados pelo Composer para gerenciar as dependências do projeto.

- `phpunit.xml`: Arquivo de configuração do PHPUnit para execução de testes.

- `README.md`: Documentação ou informações sobre o projeto.

Essa estrutura de pastas segue o padrão de arquitetura MVC (Model-View-Controller) e é projetada para manter o código organizado e seguir as melhores práticas de desenvolvimento. Conforme você desenvolve seu projeto Laravel, você colocará seu código nos locais apropriados com base na funcionalidade e no propósito de cada componente. Isso ajuda a manter seu projeto organizado e de fácil manutenção.