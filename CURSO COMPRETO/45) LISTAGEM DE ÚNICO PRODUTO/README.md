# LISTAGEM DE ÚNICO PRODUTO
Para criar uma página de listagem de um único produto em um aplicativo Laravel, siga os passos abaixo:

**Passo 1: Rota**

Defina uma rota no arquivo `routes/web.php` para acessar a página de listagem do produto. Você pode fazer isso usando o seguinte código:

```php
Route::get('/produto/{id}', 'ProdutoController@show')->name('produto.show');
```

Isso criará uma rota que aceita um parâmetro `{id}` na URL, que corresponderá ao ID do produto que você deseja listar.

**Passo 2: Controlador**

Crie um controlador chamado `ProdutoController` usando o seguinte comando:

```bash
php artisan make:controller ProdutoController
```

Em seguida, abra o arquivo `ProdutoController.php` e crie o método `show` para lidar com a exibição do produto. Dentro deste método, você pode recuperar os detalhes do produto com base no ID fornecido e passá-los para a view:

```php
use App\Produto;

public function show($id)
{
    $produto = Produto::find($id); // Recupera o produto com base no ID

    return view('produto.show', compact('produto'));
}
```

Certifique-se de que o modelo `Produto` e a tabela correspondente estejam definidos corretamente e que você tenha os dados do produto no banco de dados.

**Passo 3: View**

Crie uma view chamada `show.blade.php` na pasta `resources/views/produto` (ou em outro local de sua preferência) para exibir os detalhes do produto. Você pode usar os dados passados pelo controlador para exibir informações específicas do produto:

```php
@extends('layouts.app')

@section('content')
    <div class="produto">
        <h2>{{ $produto->nome }}</h2>
        <p>{{ $produto->descricao }}</p>
        <p>Preço: R$ {{ $produto->preco }}</p>
    </div>
@endsection
```

**Passo 4: Link para a Página do Produto**

Em suas páginas de listagem de produtos ou em qualquer outra parte do seu aplicativo onde você queira vincular a página de um produto específico, crie links que apontem para a rota do produto. Por exemplo:

```php
<a href="{{ route('produto.show', ['id' => $produto->id]) }}">Ver detalhes do produto</a>
```

Isso criará um link que direciona os usuários para a página de listagem de um único produto com base no ID do produto.

**Passo 5: Teste a Página de Listagem de Produto**

Agora você pode acessar a página de listagem de um único produto, fornecendo o ID do produto na URL. Por exemplo:

```
http://seusite.com/produto/1
```

Substitua `1` pelo ID do produto que deseja listar.

Esses são os passos básicos para criar uma página de listagem de um único produto em um aplicativo Laravel. Lembre-se de personalizar a aparência e a lógica de acordo com as necessidades específicas do seu projeto.