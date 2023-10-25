# AUTENTICAÇÃO SIMPLES
## INICIO:
Para implementar uma autenticação simples em um aplicativo Laravel, você pode seguir os passos abaixo. A autenticação é uma funcionalidade comum que permite que os usuários se registrem, façam login e acessem áreas protegidas do aplicativo.

**Passo 1: Instalar o Laravel**

Certifique-se de que você já tenha o Laravel instalado em seu projeto. Se você não o tiver, pode usar o Composer para criar um novo projeto Laravel:

```bash
composer create-project --prefer-dist laravel/laravel nome-do-projeto
```

**Passo 2: Configurar o Banco de Dados**

Certifique-se de configurar as informações do banco de dados no arquivo `.env`. Você precisará definir as variáveis de ambiente, como `DB_HOST`, `DB_DATABASE`, `DB_USERNAME` e `DB_PASSWORD`, de acordo com as configurações do seu ambiente.

**Passo 3: Executar Migrações do Banco de Dados**

Execute as migrações do banco de dados para criar as tabelas necessárias para a autenticação. O Laravel fornece migrações padrão para a autenticação. No terminal, execute:

```bash
php artisan migrate
```

**Passo 4: Instalar o Pacote Laravel/UI (Opcional)**

Se você deseja usar as views de autenticação padrão fornecidas pelo Laravel, instale o pacote Laravel/UI:

```bash
composer require laravel/ui
```

Em seguida, execute o comando para gerar as views de autenticação:

```bash
php artisan ui bootstrap --auth
```

Substitua `bootstrap` pelo nome do seu sistema de front-end, se for diferente.

**Passo 5: Criar Rota para Autenticação**

Abra o arquivo `routes/web.php` e defina as rotas de autenticação. Você pode usar o método `Auth::routes()` para gerar as rotas padrão:

```php
Route::middleware(['web'])->group(function () {
    Auth::routes();
});
```

**Passo 6: Criar Middleware para Proteger Rotas (Opcional)**

Se você desejar proteger rotas específicas que requerem autenticação, pode usar o middleware `auth`. Por exemplo:

```php
Route::get('/dashboard', 'DashboardController@index')->middleware('auth');
```

Dessa forma, somente os usuários autenticados terão acesso à rota `/dashboard`.

**Passo 7: Testar a Autenticação**

Agora, você pode acessar as páginas de registro e login do seu aplicativo em `/register` e `/login`, respectivamente. Após o registro ou login bem-sucedido, os usuários terão acesso a áreas protegidas do aplicativo.

Lembre-se de personalizar as views e os recursos de acordo com o design e as necessidades específicas do seu aplicativo. A autenticação simples fornecida pelo Laravel é um ponto de partida sólido para a construção de sistemas de autenticação mais avançados e personalizados.

## CLASSE SIMPLES DE LOGIN COM MÉTODO AUTH:
Aqui está um exemplo de uma classe simples de autenticação com um método `auth` que você pode adicionar ao seu aplicativo Laravel. Essa classe pode ser usada para verificar as credenciais do usuário e autenticá-lo com base em um nome de usuário e senha:

```php
use Illuminate\Support\Facades\Hash;

class AutenticacaoSimples
{
    public static function auth($username, $password)
    {
        // Verifique as credenciais do usuário
        $user = User::where('username', $username)->first();

        if (!$user) {
            return false; // Usuário não encontrado
        }

        if (Hash::check($password, $user->password)) {
            auth()->login($user); // Autenticar o usuário
            return true; // Autenticação bem-sucedida
        }

        return false; // Senha incorreta
    }
}
```

Neste exemplo, assumimos que você tem um modelo `User` no seu aplicativo com uma coluna `username` e uma coluna `password`. Certifique-se de ajustar o código de acordo com a estrutura do seu banco de dados e o modelo `User` real.

Para usar essa classe, você pode chamar o método `auth` passando o nome de usuário e a senha como argumentos. Por exemplo:

```php
if (AutenticacaoSimples::auth($request->input('username'), $request->input('password'))) {
    // Autenticação bem-sucedida
    return redirect('/dashboard');
} else {
    // Autenticação falhou
    return redirect('/login')->with('erro', 'Credenciais inválidas');
}
```

Neste exemplo, estamos verificando as credenciais do usuário com base no nome de usuário e senha fornecidos na solicitação HTTP. Se as credenciais estiverem corretas, o usuário será autenticado usando `auth()->login($user)`. Caso contrário, a autenticação falhará e uma mensagem de erro pode ser redirecionada de volta à página de login.

Lembre-se de que este é um exemplo simples de autenticação e não oferece recursos avançados de segurança, como autenticação de dois fatores ou proteção contra ataques de força bruta. Para uma solução de autenticação mais robusta e segura, é altamente recomendável usar o sistema de autenticação integrado do Laravel ou pacotes de terceiros, como o Laravel Passport para autenticação de API.