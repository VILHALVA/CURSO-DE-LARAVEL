# LOGOUT
Para implementar a funcionalidade de logout em um aplicativo Laravel, você pode seguir os seguintes passos:

**Passo 1: Criar uma Rota de Logout**

Primeiro, crie uma rota para a ação de logout no arquivo `routes/web.php`. O Laravel já inclui uma rota de logout padrão quando você gera um sistema de autenticação, mas se você estiver criando sua própria rota de logout, ela pode ser definida da seguinte forma:

```php
Route::post('/logout', 'Auth\LoginController@logout')->name('logout');
```

A rota acima usa o método POST, que é a prática recomendada para a ação de logout por motivos de segurança.

**Passo 2: Criar um Link ou Botão para Logout**

Na sua view, você pode criar um link ou botão que redirecionará o usuário para a rota de logout. Por exemplo, você pode criar um link de logout no cabeçalho do seu aplicativo:

```html
<a href="{{ route('logout') }}"
   onclick="event.preventDefault();
            document.getElementById('logout-form').submit();">
    Logout
</a>

<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    @csrf
</form>
```

Este código HTML cria um link "Logout" que, quando clicado, envia uma solicitação POST para a rota de logout. Ele também inclui um formulário oculto para enviar o token CSRF, que é necessário para proteger contra ataques CSRF.

**Passo 3: Executar o Logout**

No controlador de autenticação padrão do Laravel (normalmente em `app/Http/Controllers/Auth/LoginController.php`), o método `logout` é responsável por executar o logout do usuário:

```php
use Illuminate\Support\Facades\Auth;

public function logout(Request $request)
{
    Auth::logout();

    $request->session()->invalidate();

    return redirect('/'); // Redirecione para a página inicial ou outra página desejada após o logout.
}
```

Este método utiliza o facade `Auth` para fazer o logout do usuário, invalida a sessão e redireciona o usuário para a página inicial ou outra página de sua escolha.

**Passo 4: Testar o Logout**

Agora, você pode testar o logout. Quando o usuário clicar no link "Logout", ele será desconectado e redirecionado para a página que você especificou no método `logout`.

Certifique-se de que o token CSRF esteja incluído no formulário de logout para proteger contra ataques CSRF.

Estes são os passos básicos para implementar a funcionalidade de logout em um aplicativo Laravel. Você pode personalizar ainda mais o logout, como redirecionar para uma página específica após o logout ou exibir uma mensagem de confirmação.