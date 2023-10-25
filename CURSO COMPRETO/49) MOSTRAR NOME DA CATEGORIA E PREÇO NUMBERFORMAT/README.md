# MOSTRAR NOME DA CATEGORIA E PREÇO NUMBERFORMAT
Para exibir o nome da categoria e o preço formatado em uma página de listagem de produtos de uma categoria específica em um aplicativo Laravel, você pode usar a função `number_format` do PHP para formatar o preço. Aqui estão os passos:

**Passo 1: Modifique o Controlador**

No controlador `CategoriaController`, você pode modificar o método `listarProdutos` para formatar o preço dos produtos e passar o nome da categoria para a view. Aqui está como fazer isso:

```php
use App\Categoria;

public function listarProdutos($id)
{
    $categoria = Categoria::find($id);

    if (!$categoria) {
        abort(404); // Ou redirecione para uma página de erro, caso a categoria não exista
    }

    $produtos = $categoria->produtos; // Assumindo que existe uma relação entre Categoria e Produto

    return view('categoria.produtos', compact('categoria', 'produtos'));
}
```

Agora você está passando a categoria e os produtos para a view.

**Passo 2: Modifique a View**

Na view `produtos.blade.php`, você pode acessar a categoria e os produtos passados pelo controlador e usar a função `number_format` para formatar o preço dos produtos. Aqui está como fazer isso:

```php
@extends('layouts.app')

@section('content')
    <h1>Produtos da categoria: {{ $categoria->nome }}</h1>
    
    <ul>
        @foreach ($produtos as $produto)
            <li>
                {{ $produto->nome }} - Preço: R$ {{ number_format($produto->preco, 2, ',', '.') }}
            </li>
        @endforeach
    </ul>
@endsection
```

Neste exemplo, usamos `number_format($produto->preco, 2, ',', '.')` para formatar o preço do produto com duas casas decimais, separador de milhares como ponto e separador decimal como vírgula. Você pode ajustar os parâmetros da função `number_format` de acordo com as convenções de formatação de preços do seu país.

Dessa forma, o nome da categoria será exibido junto com os preços dos produtos formatados corretamente na página de listagem de produtos da categoria. Certifique-se de que os dados no banco de dados estejam no formato apropriado antes de usar a função `number_format`.