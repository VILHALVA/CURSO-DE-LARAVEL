# MENSAGEM DE RETORNO
Para exibir mensagens de retorno em um aplicativo Laravel, você pode usar a funcionalidade de sessão integrada do Laravel para armazenar e recuperar mensagens. Normalmente, isso é usado para informar aos usuários sobre o resultado de uma ação, como adicionar ou excluir um produto com sucesso. Vou mostrar como fazer isso:

**Passo 1: Armazenar a Mensagem na Sessão**

Quando você realiza uma ação que requer uma mensagem de retorno, você pode armazenar a mensagem na sessão. Por exemplo, após adicionar com sucesso um produto, você pode fazer o seguinte no controlador:

```php
use Illuminate\Support\Facades\Session;

public function store(Request $request)
{
    // Lógica para adicionar o produto

    Session::flash('success', 'Produto adicionado com sucesso.');

    return redirect()->back();
}
```

Neste exemplo, `Session::flash('success', 'Produto adicionado com sucesso.')` armazena uma mensagem "Produto adicionado com sucesso" na sessão com a chave 'success'.

**Passo 2: Exibir a Mensagem na View**

Na view onde você deseja exibir a mensagem, você pode verificar se há uma mensagem na sessão e exibi-la. Por exemplo, em sua view de listagem de produtos (`index.blade.php`), você pode fazer o seguinte:

```html
@if(Session::has('success'))
    <div class="alert alert-success">
        {{ Session::get('success') }}
    </div>
@endif
```

Isso verifica se há uma mensagem de sucesso na sessão e a exibe dentro de um alerta Bootstrap. Você pode personalizar o estilo da mensagem conforme necessário.

**Passo 3: Limpar a Mensagem da Sessão (Opcional)**

As mensagens armazenadas na sessão usando `Session::flash()` são automaticamente excluídas após a próxima solicitação. No entanto, se você deseja limpar manualmente as mensagens da sessão, pode fazê-lo usando o método `Session::forget()`.

Por exemplo, você pode limpar manualmente a mensagem de sucesso após a exibição:

```php
Session::forget('success');
```

Isso garante que a mensagem não seja exibida novamente em solicitações subsequentes.

**Passo 4: Tratar Outros Tipos de Mensagem**

Além das mensagens de sucesso, você pode usar a mesma abordagem para tratar mensagens de erro, informações, avisos, etc. Basta substituir a chave 'success' por um valor apropriado, como 'error', 'info', 'warning', etc.

Esta é uma maneira simples e eficaz de exibir mensagens de retorno em um aplicativo Laravel. Certifique-se de personalizar o estilo das mensagens para corresponder ao design do seu aplicativo.