# REGISTER
O processo de criação de um sistema de registro (sign-up) em um aplicativo Laravel envolve várias etapas, incluindo a criação de uma página de registro, a validação dos dados de entrada do usuário, a criação de um novo registro no banco de dados e a autenticação do usuário após o registro bem-sucedido. Vou orientá-lo através dos principais passos para criar um sistema de registro em um aplicativo Laravel:

**Passo 1: Rota de Registro**

Primeiro, crie uma rota para a página de registro no arquivo `routes/web.php`. Você pode usar o método `get` para definir uma rota para a exibição do formulário de registro:

```php
Route::get('/registro', 'Auth\RegistroController@showRegistroForm')->name('registro');
```

**Passo 2: Controlador de Registro**

Crie um controlador para gerenciar o registro de usuários. Use o comando Artisan para gerar um controlador de registro:

```bash
php artisan make:controller Auth/RegistroController
```

Dentro do controlador `RegistroController`, você deve definir dois métodos: `showRegistroForm` para exibir o formulário de registro e `registro` para processar os dados de registro.

**Passo 3: Formulário de Registro**

Crie uma view para o formulário de registro em `resources/views/auth/registro.blade.php`. Este formulário deve incluir campos como nome, email e senha, juntamente com um botão de registro. Certifique-se de que o formulário envie os dados para a rota de registro:

```html
<form method="POST" action="{{ route('registro') }}">
    @csrf
    <input type="text" name="nome" placeholder="Nome">
    <input type="email" name="email" placeholder="Email">
    <input type="password" name="senha" placeholder="Senha">
    <button type="submit">Registrar</button>
</form>
```

**Passo 4: Validação de Dados**

No método `registro` do controlador, adicione lógica para validar os dados de entrada do usuário. Você pode usar as regras de validação do Laravel para fazer isso. Certifique-se de incluir a validação de campos obrigatórios, email único, confirmação de senha, entre outros:

```php
public function registro(Request $request)
{
    $request->validate([
        'nome' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:usuarios',
        'senha' => 'required|string|min:6|confirmed',
    ]);

    // Crie o novo registro de usuário aqui
}
```

**Passo 5: Criação do Registro**

Após a validação dos dados, crie um novo registro de usuário na tabela de usuários. Você pode usar o modelo `User` para fazer isso:

```php
use App\User;
use Illuminate\Support\Facades\Hash;

public function registro(Request $request)
{
    $request->validate([
        'nome' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:usuarios',
        'senha' => 'required|string|min:6|confirmed',
    ]);

    User::create([
        'nome' => $request->nome,
        'email' => $request->email,
        'senha' => Hash::make($request->senha),
    ]);

    // Redirecione o usuário após o registro bem-sucedido
}
```

**Passo 6: Autenticação Após Registro**

Após criar o registro com sucesso, você pode autenticar automaticamente o novo usuário. Use a função `auth()->login()` para fazer isso:

```php
use Illuminate\Support\Facades\Auth;

public function registro(Request $request)
{
    $request->validate([
        'nome' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:usuarios',
        'senha' => 'required|string|min:6|confirmed',
    ]);

    $user = User::create([
        'nome' => $request->nome,
        'email' => $request->email,
        'senha' => Hash::make($request->senha),
    ]);

    Auth::login($user);

    return redirect('/dashboard'); // Redirecione para a página após o registro
}
```

**Passo 7: Teste o Registro**

Agora você pode testar o sistema de registro acessando a rota de registro e preenchendo o formulário. Após o registro, o usuário deve ser autenticado automaticamente e redirecionado para a página desejada (por exemplo, a página do painel).

Lembre-se de personalizar a página de registro, as mensagens de erro, as regras de validação e a autenticação de acordo com as necessidades específicas do seu aplicativo.