# CARRINHO DE COMPRAS COM DARRYLDECODE - CART
Para criar um carrinho de compras em um aplicativo Laravel usando a biblioteca `darryldecode/cart`, você pode seguir os passos a seguir:

**Passo 1: Instalação da biblioteca**

Primeiro, instale a biblioteca `darryldecode/cart` usando o Composer:

```bash
composer require darryldecode/cart
```

**Passo 2: Configuração**

Depois de instalar a biblioteca, você precisa configurá-la. No arquivo `config/app.php`, adicione o seguinte no array de provedores de serviços:

```php
'providers' => [
    // ...
    Darryldecode\Cart\CartServiceProvider::class,
],
```

E no array de facades, adicione o seguinte:

```php
'aliases' => [
    // ...
    'Cart' => Darryldecode\Cart\Facades\CartFacade::class,
],
```

Em seguida, publique a configuração do carrinho:

```bash
php artisan vendor:publish --tag="cart-config"
```

**Passo 3: Criação de Rotas e Controlador**

Crie rotas para adicionar produtos ao carrinho, visualizar o carrinho e concluir a compra. Em seguida, crie um controlador para lidar com essas ações.

**Passo 4: Adicionar Produtos ao Carrinho**

No controlador, você pode usar o método `add` do carrinho para adicionar produtos ao carrinho:

```php
use Cart;

public function adicionarAoCarrinho(Request $request)
{
    $produto = Produto::find($request->produto_id);

    Cart::add($produto->id, $produto->nome, 1, $produto->preco);

    return redirect()->route('carrinho');
}
```

**Passo 5: Visualização do Carrinho**

Crie uma rota e um método no controlador para exibir o carrinho:

```php
use Cart;

public function mostrarCarrinho()
{
    $items = Cart::getContent();

    return view('carrinho', compact('items'));
}
```

Na view `carrinho.blade.php`, você pode iterar sobre os itens do carrinho e exibi-los. Por exemplo:

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
        @foreach ($items as $item)
            <tr>
                <td>{{ $item->name }}</td>
                <td>{{ $item->quantity }}</td>
                <td>R$ {{ $item->price }}</td>
                <td>R$ {{ $item->getPriceSum() }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
```

**Passo 6: Concluir a Compra**

Para concluir a compra, você pode criar uma rota e um método no controlador que realizam as etapas finais do processo de compra. Isso pode incluir o cálculo do total da compra, a coleta de informações do cliente, a geração de um pedido, etc.

Esses são os passos básicos para criar um carrinho de compras com a biblioteca `darryldecode/cart` em um aplicativo Laravel. Lembre-se de personalizar a lógica de acordo com as necessidades específicas do seu projeto, incluindo o gerenciamento de estoque, autenticação do usuário e outros aspectos da funcionalidade do carrinho de compras.