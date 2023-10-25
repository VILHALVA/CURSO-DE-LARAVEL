# CATEGORIAS DINÂMICAS COM VIEWSHARE
Para criar categorias dinâmicas em um aplicativo Laravel usando `view()->share()`, você pode seguir os seguintes passos:

**Passo 1: Criar um Service Provider**

Em primeiro lugar, crie um Service Provider para compartilhar as categorias com todas as views. Você pode fazer isso com o comando Artisan:

```bash
php artisan make:provider CategoriesServiceProvider
```

Este comando criará um arquivo `CategoriesServiceProvider.php` na pasta `app/Providers`. Abra o arquivo e defina o método `boot()` para compartilhar as categorias com as views. Por exemplo:

```php
use Illuminate\Support\ServiceProvider;

class CategoriesServiceProvider extends ServiceProvider
{
    public function boot()
    {
        // Recupere as categorias do banco de dados (substitua isso pela lógica real de busca)
        $categories = Category::all();

        // Compartilhe as categorias com todas as views
        view()->share('categories', $categories);
    }

    public function register()
    {
        //
    }
}
```

Lembre-se de importar o modelo `Category` no início do arquivo e substituir a lógica de busca pelas suas próprias necessidades para obter as categorias a partir do banco de dados.

**Passo 2: Registrar o Service Provider**

Agora, registre o Service Provider no arquivo `config/app.php`. Adicione a classe do Service Provider à matriz `providers`:

```php
'providers' => [
    // ...
    App\Providers\CategoriesServiceProvider::class,
],
```

**Passo 3: Usar as Categorias nas Views**

Agora, as categorias serão automaticamente compartilhadas com todas as views da sua aplicação. Você pode usá-las em qualquer view da seguinte maneira:

```php
@foreach ($categories as $category)
    <a href="{{ route('category.show', $category->id) }}">{{ $category->name }}</a>
@endforeach
```

Isso irá criar links para exibir as páginas de cada categoria, por exemplo, usando uma rota chamada `category.show`.

**Passo 4: Atualizar a Lógica de Busca de Categorias**

No método `boot()` do seu Service Provider, substitua a lógica de busca por uma consulta real ao banco de dados para recuperar as categorias.

Com esses passos, você pode compartilhar categorias dinâmicas com todas as views em seu aplicativo Laravel usando `view()->share()`. Certifique-se de personalizar a lógica de busca de categorias de acordo com as necessidades específicas do seu projeto.