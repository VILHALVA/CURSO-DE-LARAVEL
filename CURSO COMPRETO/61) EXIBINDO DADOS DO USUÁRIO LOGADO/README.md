# EXIBINDO DADOS DO USUÁRIO LOGADO
Para exibir os dados do usuário logado em um aplicativo Laravel, você pode acessar o usuário autenticado através da função `auth()`. O Laravel torna isso muito simples. Aqui estão os passos para exibir os dados do usuário logado:

**Passo 1: Acesso ao Usuário Autenticado**

No Laravel, você pode acessar o usuário autenticado em qualquer lugar do seu aplicativo usando a função `auth()`. Você pode acessar o usuário autenticado em um controlador, view ou qualquer outro lugar onde o sistema de autenticação esteja disponível.

Para acessar o usuário autenticado em um controlador, você pode fazer o seguinte:

```php
$user = auth()->user();
```

A variável `$user` agora contém o modelo do usuário autenticado.

**Passo 2: Exibindo Dados do Usuário na View**

Suponha que você deseje exibir o nome e o email do usuário logado em uma view. Você pode passar o objeto do usuário para a view e, em seguida, exibir os dados na view.

No controlador:

```php
public function mostrarPerfil()
{
    $user = auth()->user();

    return view('perfil', compact('user'));
}
```

Na view `perfil.blade.php`, você pode exibir os dados do usuário:

```html
<h1>Seu Perfil</h1>
<p>Nome: {{ $user->name }}</p>
<p>Email: {{ $user->email }}</p>
```

Dessa forma, você pode exibir os dados do usuário logado na view.

Lembre-se de que você pode personalizar as informações que deseja exibir com base nas colunas da tabela de usuários do seu banco de dados. Certifique-se de ter as rotas, controladores e views adequadas configuradas para exibir o perfil do usuário logado. Isso permitirá que os usuários vejam suas informações após o login.