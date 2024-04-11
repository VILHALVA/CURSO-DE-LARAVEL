# MANUAL
## INSTALAÇÕES:
1. **Instale o PHP:**
   - Baixe e instale o PHP versão 8.2.4 no seu sistema operacional. Você pode encontrar o instalador e as instruções de instalação no [site oficial do PHP](https://www.php.net/downloads).

2. **Configure o PHP no PATH do sistema:**
   - Adicione o diretório do PHP ao PATH do sistema para facilitar a execução de comandos PHP em qualquer diretório. As instruções para fazer isso variam de acordo com o sistema operacional que você está usando. Aqui estão instruções para [Windows](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/) e [Linux/Unix](https://linuxize.com/post/how-to-add-directory-to-path-in-linux/).

3. **Instale o Composer:**
   - Baixe e instale o Composer, um gerenciador de dependências para o PHP. Você pode encontrar o instalador e as instruções de instalação no [site oficial do Composer](https://getcomposer.org/download/).

4. **Configure o Composer:**
   - Após instalar o Composer, verifique se ele está configurado corretamente. Se necessário, comente a linha `extension=openssl` no arquivo `php.ini` para evitar conflitos. Você pode encontrar mais informações sobre a configuração do Composer na [documentação oficial do Composer](https://getcomposer.org/doc/00-intro.md).

5. **Instale o OpenSSL:**
   - Baixe e instale o OpenSSL, uma biblioteca de criptografia, para permitir que o Composer baixe pacotes de maneira segura via HTTPS. Você pode encontrar o instalador e as instruções de instalação no [site oficial do OpenSSL](https://www.openssl.org/source/).


## PRIMEIRO PROJETO:
Abaixo está um exemplo básico de um aplicativo Laravel que cria uma rota para exibir "Hello, World!" quando acessado:

1. **Instale o Laravel**:
Antes de começar, você precisa instalar o Laravel. Você pode fazer isso usando o Composer, o gerenciador de pacotes do PHP:
```bash
composer create-project --prefer-dist laravel/laravel meu-projeto-laravel
```

Isso criará um novo projeto Laravel chamado `meu-projeto-laravel`.

2. **Crie uma rota e um controlador**:
Vamos criar uma rota para a página inicial que exibirá "Hello, World!".

Abra o arquivo `routes/web.php` e adicione o seguinte código:
```php
use Illuminate\Support\Facades\Route;

Route::get('/', 'App\Http\Controllers\HomeController@index');
```

Isso cria uma rota GET para a URL raiz (`/`) que chama o método `index` do controlador `HomeController`.

Agora, vamos criar o controlador. Execute o seguinte comando no terminal:
```bash
php artisan make:controller HomeController
```

Isso criará um novo controlador chamado `HomeController`. Abra o arquivo `app/Http/Controllers/HomeController.php` e adicione o seguinte código:
```php
namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return 'Hello, World!';
    }
}
```

3. **Execute o servidor embutido do PHP**:
Para testar o aplicativo, você pode executar o servidor embutido do PHP. No terminal, navegue até o diretório do seu projeto Laravel e execute o seguinte comando:
```bash
php artisan serve
```

Isso iniciará o servidor em `http://localhost:8000`.

4. **Acesse o aplicativo no navegador**:
Abra um navegador da web e vá para `http://localhost:8000/`. Você deverá ver a mensagem "Hello, World!" sendo exibida.

**Explicação**:
- No arquivo `routes/web.php`, estamos definindo uma rota GET para a URL raiz (`/`). Quando essa rota é acessada, o Laravel chama o método `index` do controlador `HomeController`.
- No controlador `HomeController`, o método `index` simplesmente retorna a string "Hello, World!".
- Quando você executa o servidor embutido do PHP com `php artisan serve`, o Laravel escuta as solicitações HTTP na porta 8000 por padrão.
- Quando você acessa `http://localhost:8000/` em seu navegador, o Laravel direciona a solicitação para a rota definida e você vê a mensagem "Hello, World!" sendo exibida.

## INSTALANDO AS DEPEDÊNCIAS:
Se você baixou um projeto Laravel do GitHub que contém um arquivo `composer.json`, você precisa instalar as dependências do Composer. O comando para fazer isso é:

```bash
composer install
```

Esse comando lerá o arquivo `composer.json` no diretório do seu projeto Laravel e instalará todas as dependências listadas nele. Certifique-se de estar no diretório raiz do seu projeto Laravel ao executar esse comando.

## DIRETÓRIOS:
```
project-root/                  # Diretório raiz do projeto Laravel
├── app/                       # Contém a lógica da aplicação
│   ├── Console/               # Contém comandos de console personalizados
│   ├── Exceptions/            # Contém exceções personalizadas da aplicação
│   ├── Http/                  # Contém controladores, middlewares e requests HTTP
│   │   ├── Controllers/       # Contém controladores da aplicação
│   │   ├── Middleware/        # Contém middlewares da aplicação
│   │   └── Requests/          # Contém classes de validação de requests
│   ├── Models/                # Contém os modelos de dados da aplicação
│   └── Providers/             # Contém provedores de serviços da aplicação
├── bootstrap/                 # Contém os scripts de inicialização da aplicação
├── config/                    # Contém arquivos de configuração da aplicação
├── database/                  # Contém os arquivos de migração e seeds do banco de dados
│   ├── factories/             # Contém fábricas para criação de registros falsos para testes
│   ├── migrations/            # Contém os arquivos de migração para criar e modificar tabelas
│   └── seeds/                 # Contém arquivos de seeds para popular o banco de dados com dados iniciais
├── public/                    # O diretório de acesso público à aplicação
│   ├── css/                   # Contém arquivos CSS da aplicação
│   ├── js/                    # Contém arquivos JavaScript da aplicação
│   └── index.php              # O ponto de entrada para todas as requisições HTTP
├── resources/                 # Contém os recursos da aplicação, como views e arquivos de tradução
│   ├── lang/                  # Contém arquivos de tradução da aplicação
│   ├── views/                 # Contém as views da aplicação
│   └── ...
├── routes/                    # Contém os arquivos de definição de rotas da aplicação
├── storage/                   # Contém arquivos gerados pela aplicação, como logs e arquivos temporários
│   ├── app/                   # Contém arquivos gerados pela aplicação
│   ├── framework/             # Contém arquivos gerados pelo framework
│   └── ...
├── tests/                     # Contém testes automatizados da aplicação
├── vendor/                    # Contém as dependências gerenciadas pelo Composer
├── .env                       # Arquivo de configuração de ambiente
├── artisan                    # Script de console do Laravel para executar comandos da aplicação
├── composer.json              # Arquivo de manifesto do Composer que lista as dependências da aplicação
└── ...                        # Outros arquivos e diretórios do projeto
```

### EXPLICAÇÃO:
- **`app/`:** Este diretório contém toda a lógica da aplicação, incluindo controladores, modelos, middlewares, provedores de serviço, e outros componentes essenciais.
- **`bootstrap/`:** Contém os scripts de inicialização da aplicação, responsáveis por carregar o ambiente e preparar a aplicação para ser executada.
- **`config/`:** Aqui são armazenados todos os arquivos de configuração da aplicação, como configurações de banco de dados, serviços e outras opções de configuração.
- **`database/`:** Este diretório contém os arquivos relacionados ao banco de dados, incluindo migrações para criação e modificação de tabelas, fábricas para geração de dados de teste e seeds para popular o banco de dados com dados iniciais.
- **`public/`:** O diretório de acesso público à aplicação, contendo os arquivos CSS, JavaScript e outros recursos acessíveis diretamente pelo navegador.
- **`resources/`:** Contém os recursos da aplicação, como views, arquivos de tradução e outros arquivos relacionados à interface do usuário.
- **`routes/`:** Aqui são definidas as rotas da aplicação, que mapeiam URLs para controladores ou closures específicas.
- **`storage/`:** Este diretório é usado para armazenar arquivos gerados pela aplicação, como logs, sessões, caches e uploads de arquivos.
- **`tests/`:** Contém os testes automatizados da aplicação, incluindo testes unitários e testes de integração.
- **`vendor/`:** Onde ficam as dependências do projeto, gerenciadas pelo Composer. Este diretório não é versionado e é gerado automaticamente pelo Composer.

