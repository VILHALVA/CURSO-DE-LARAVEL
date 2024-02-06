# SINTAXE
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