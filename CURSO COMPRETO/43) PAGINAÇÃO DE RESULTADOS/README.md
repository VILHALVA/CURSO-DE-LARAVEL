# PAGINAÇÃO DE RESULTADOS
A paginação de resultados é uma funcionalidade importante quando se trata de exibir uma grande quantidade de dados em uma aplicação Laravel. Com a paginação, você pode dividir os resultados em várias páginas, tornando a exibição dos dados mais amigável para o usuário. Para implementar a paginação de resultados no Laravel, siga os passos a seguir:

**Passo 1: Preparando o Modelo e os Dados**

Certifique-se de que você tenha um modelo Eloquent que representa os dados que deseja paginar. Por exemplo, se você deseja paginar uma lista de produtos, certifique-se de ter um modelo `Produto`.

**Passo 2: Consulta de Dados com Paginação**

Em seu controlador, você pode usar o método `paginate` ou `simplePaginate` para recuperar os dados com paginação. O método `paginate` é mais comum e fornece controles de paginação e um link "anterior" e "próximo". O método `simplePaginate` oferece uma paginação mais simples, sem os controles de "anterior" e "próximo".

Aqui está um exemplo de como paginar os resultados de uma consulta:

```php
use App\Produto;

public function index()
{
    $produtos = Produto::paginate(10); // Paginação com 10 itens por página

    return view('lista-de-produtos', compact('produtos'));
}
```

No exemplo acima, estamos recuperando os produtos com uma paginação de 10 produtos por página.

**Passo 3: Exibição na View**

Na sua view `lista-de-produtos.blade.php`, você pode usar as variáveis fornecidas pela paginação para exibir os dados e os controles de navegação da página. Por exemplo:

```php
@foreach ($produtos as $produto)
    <div class="produto">
        <h2>{{ $produto->nome }}</h2>
        <p>{{ $produto->descricao }}</p>
    </div>
@endforeach

{{ $produtos->links() }}
```

O método `links()` irá renderizar os controles de navegação para a próxima e as páginas anteriores.

**Passo 4: Personalização da Paginação**

Você pode personalizar a paginação de várias maneiras:

- Alterar o número de itens por página: Você pode ajustar o número de itens exibidos por página alterando o argumento do método `paginate`.

- Personalizar a aparência: Você pode personalizar a aparência dos controles de paginação usando CSS para corresponder ao estilo do seu aplicativo.

- Adicionar funcionalidades adicionais: Você pode adicionar funcionalidades como pesquisa, classificação e filtros para aprimorar a experiência do usuário.

A paginação de resultados é uma maneira eficaz de lidar com grandes conjuntos de dados em uma aplicação Laravel, tornando mais fácil para os usuários navegar e encontrar informações específicas. Certifique-se de consultar a documentação oficial do Laravel para obter informações adicionais sobre a paginação:

[Documentação de Paginação do Laravel](https://laravel.com/docs/8.x/pagination)