# ADICIONANDO ITENS NO CARRINHO
Para adicionar itens ao carrinho de compras usando a biblioteca `darryldecode/cart` em um aplicativo Laravel, você pode seguir os passos a seguir:

**Passo 1: Crie uma Rota para Adicionar Produtos ao Carrinho**

Defina uma rota em seu arquivo `routes/web.php` que aponte para um controlador e método responsáveis por adicionar produtos ao carrinho. Por exemplo:

```php
Route::post('carrinho/adicionar', 'CarrinhoController@adicionar')->name('carrinho.adicionar');
```

**Passo 2: Crie o Controlador**

Crie um controlador chamado `CarrinhoController` usando o comando Artisan:

```bash
php artisan make:controller CarrinhoController
```

**Passo 3: Defina a Lógica para Adicionar Produtos**

No método `adicionar` do controlador, você pode adicionar produtos ao carrinho. Primeiro, você precisa obter os detalhes do produto que deseja adicionar. Vamos supor que você tenha uma tabela de produtos no banco de dados. Aqui está um exemplo de como adicionar um produto ao carrinho:

```php
use Cart;

public function adicionar(Request $request)
{
    $produto = Produto::find($request->produto_id);

    Cart::add([
        'id' => $produto->id,
        'name' => $produto->nome,
        'price' => $produto->preco,
        'quantity' => 1, // Pode ser ajustado de acordo com as quantidades escolhidas pelo usuário
    ]);

    return redirect()->route('carrinho.mostrar');
}
```

Certifique-se de importar a classe `Cart` e o modelo `Produto` no início do arquivo. A função `Cart::add` adiciona o produto ao carrinho com os detalhes especificados.

**Passo 4: Crie a View do Carrinho**

Você também deve criar uma view para exibir o carrinho e seus itens. Vamos supor que você crie uma view chamada `carrinho.blade.php`. Você pode iterar sobre os itens do carrinho e exibi-los na view:

```html
<table>
    <thead>
        <tr>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Preço Unitário</th>
            <th>Subtotal</th>
        </tr>
    </thead>
    <tbody>
        @foreach (Cart::getContent() as $item)
            <tr>
                <td>{{ $item->name }}</td>
                <td>{{ $item->quantity }}</td>
                <td>R$ {{ $item->price }}</td>
                <td>R$ {{ $item->price * $item->quantity }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
```

**Passo 5: Criar um Link para Adicionar Produtos**

Na sua aplicação, você deve criar um link ou botão que permita aos usuários adicionar produtos ao carrinho. Este link ou botão deve apontar para a rota que você definiu no Passo 1.

**Passo 6: Teste a Adição de Itens no Carrinho**

Agora, você pode testar a adição de itens ao carrinho. Ao clicar no link ou botão que você criou, os produtos devem ser adicionados ao carrinho e exibidos na view do carrinho.

Lembre-se de personalizar a lógica e a aparência de acordo com as necessidades específicas do seu projeto. Além disso, você pode adicionar mais funcionalidades, como remover itens do carrinho, calcular o total da compra e processar a finalização da compra, à medida que desenvolve o carrinho de compras em seu aplicativo Laravel.