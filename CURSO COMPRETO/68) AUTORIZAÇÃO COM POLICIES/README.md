# AUTORIZAÇÃO COM POLICIES
As "Policies" no Laravel são uma maneira poderosa de implementar lógica de autorização para modelos específicos do seu aplicativo. Elas permitem que você defina regras de autorização personalizadas para ações relacionadas a um modelo, como criar, atualizar ou excluir registros. As políticas fornecem uma abordagem mais organizada e estruturada para a autorização em comparação com os Gates.

Aqui estão os passos básicos para implementar a autorização com Policies no Laravel:

**Passo 1: Criar uma Policy**

Primeiro, você precisa criar uma Policy para um modelo específico. O Laravel fornece um comando Artisan para gerar uma Policy:

```bash
php artisan make:policy PostPolicy
```

Isso criará um arquivo `PostPolicy.php` na pasta `app/Policies`, que contém uma classe de política vazia. Você deve definir as regras de autorização dentro dessa classe.

**Passo 2: Definir as Regras de Autorização na Policy**

Dentro da classe de política (por exemplo, `PostPolicy`), você deve definir os métodos que representam as regras de autorização para diferentes ações. Cada método deve retornar `true` se o usuário tiver permissão para realizar a ação ou `false` caso contrário.

Aqui está um exemplo de um método `update` em uma política para verificar se o usuário tem permissão para atualizar um post:

```php
public function update(User $user, Post $post)
{
    return $user->id === $post->user_id;
}
```

Neste exemplo, estamos verificando se o usuário atual é o autor do post. Se for o caso, o método `update` retorna `true`, indicando que o usuário tem permissão para atualizar o post.

**Passo 3: Registrar a Policy**

Depois de criar a Policy, você deve registrá-la no arquivo `app/Providers/AuthServiceProvider.php`. Adicione a associação entre o modelo e a classe de política no método `boot`:

```php
use App\Policies\PostPolicy;
use App\Post;

public function boot()
{
    $this->registerPolicies();

    Gate::resource('post', PostPolicy::class);
}
```

**Passo 4: Verificar a Autorização em um Controlador**

Agora que a Policy está definida e registrada, você pode verificar a autorização em um controlador. Use o método `authorize` para verificar se o usuário atual tem permissão para realizar uma ação específica.

```php
public function update(Request $request, Post $post)
{
    $this->authorize('update', $post);

    // Coloque aqui a lógica de atualização do post
}
```

O método `authorize` verifica se o usuário atual tem permissão para executar a ação 'update' no modelo Post. Se o usuário não tiver permissão, o Laravel lançará uma exceção de autorização.

**Passo 5: Teste a Autorização**

Certifique-se de testar cuidadosamente a autorização para garantir que as Policies estejam funcionando conforme o esperado. Crie diferentes métodos de política para diferentes ações e regras de autorização específicas para cada caso no seu aplicativo.

As Policies no Laravel são uma maneira organizada e flexível de implementar lógica de autorização específica para modelos, tornando o controle de acesso do seu aplicativo mais eficiente e fácil de gerenciar.