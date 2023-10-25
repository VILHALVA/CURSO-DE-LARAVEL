# ATUALIZANDO ITENS DO CARRINHO
Para atualizar a quantidade de um item no carrinho de compras em um aplicativo Laravel que utiliza a biblioteca `darryldecode/cart`, você pode seguir os seguintes passos:

**Passo 1: Crie uma Rota para Atualizar Itens do Carrinho**

Defina uma rota que aponte para um controlador e método responsáveis por atualizar a quantidade de produtos no carrinho. No seu arquivo `routes/web.php`, adicione uma rota como a seguinte:

```php
Route::post('carrinho/atualizar', 'CarrinhoController@atualizar')->name('carrinho.atualizar');
```

**Passo 2: Crie o Método no Controlador**

Crie um método no controlador `CarrinhoController` para lidar com a atualização da quantidade de produtos no carrinho. Aqui está um exemplo de como você pode fazer isso:

```php
use Cart;

public function atualizar(Request $request)
{
    $produto_id = $request->produto_id;
    $quantidade = $request->quantidade;
    
    Cart::update($produto_id, [
        'quantity' => [
            'relative' => false, // Define para atualização absoluta
            'value' => $quantidade
        ]
    ]);
    
    return redirect()->route('carrinho.mostrar');
}
```

Neste exemplo, estamos obtendo o ID do produto e a nova quantidade da solicitação e usando o método `update` da biblioteca `darryldecode/cart` para atualizar a quantidade do produto no carrinho.

**Passo 3: Crie um Formulário para Atualizar Itens**

Na sua página de exibição do carrinho, você pode criar um formulário para permitir que o usuário atualize a quantidade de produtos no carrinho. Por exemplo:

```html
<form action="{{ route('carrinho.atualizar') }}" method="POST">
    @csrf
    <input type="hidden" name="produto_id" value="{{ $produto->id }}">
    <input type="number" name="quantidade" value="{{ $produto->quantity }}">
    <button type="submit" class="botao-atualizar">Atualizar Quantidade</button>
</form>
```

Neste exemplo, estamos criando um formulário que envia uma solicitação POST para a rota de atualização quando o botão "Atualizar Quantidade" é clicado. Certifique-se de que o `produto_id` e a nova `quantidade` sejam incluídos na solicitação POST.

**Passo 4: Teste a Atualização de Itens do Carrinho**

Agora, você pode testar a atualização da quantidade de itens no carrinho. Quando o botão "Atualizar Quantidade" é clicado, a quantidade do produto correspondente no carrinho deve ser atualizada, e o usuário será redirecionado de volta à página de exibição do carrinho.

Certifique-se de personalizar a lógica e a aparência de acordo com as necessidades específicas do seu projeto, incluindo a estilização dos botões de atualização e a exibição de mensagens de sucesso.