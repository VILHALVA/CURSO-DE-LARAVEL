# RESTRINGINDO RECURSO NA VIEW COM CAN E CANNOT
No Laravel, você pode usar as diretivas `@can` e `@cannot` nas suas views para condicionalmente exibir ou ocultar conteúdo com base nas regras de autorização definidas nas suas políticas (Policies) e Gates. As diretivas `@can` são usadas quando você deseja exibir conteúdo se o usuário tiver permissão para uma ação específica, enquanto `@cannot` é usada quando você deseja exibir conteúdo se o usuário não tiver permissão.

Aqui está como usar `@can` e `@cannot` nas suas views:

**Diretiva `@can`**

Você pode usar `@can` para exibir conteúdo se o usuário tiver permissão para realizar uma ação específica. Por exemplo, suponha que você deseje exibir um botão de edição em um post somente se o usuário tiver permissão para atualizar o post:

```blade.php
@can('update', $post)
    <a href="{{ route('posts.edit', $post) }}">Editar</a>
@endcan
```

Neste exemplo, estamos verificando se o usuário tem permissão para atualizar o post usando o Gate ou a Policy correspondente. Se o usuário tiver permissão, o botão "Editar" será exibido.

**Diretiva `@cannot`**

Você pode usar `@cannot` para exibir conteúdo se o usuário não tiver permissão para realizar uma ação específica. Por exemplo, se você deseja mostrar uma mensagem de erro se o usuário não puder excluir um post:

```blade.php
@cannot('delete', $post)
    <p>Você não tem permissão para excluir este post.</p>
@endcannot
```

Neste caso, estamos verificando se o usuário não tem permissão para excluir o post. Se não tiver permissão, a mensagem de erro será exibida.

As diretivas `@can` e `@cannot` são úteis para personalizar a exibição de conteúdo com base nas regras de autorização do seu aplicativo. Certifique-se de definir adequadamente as Policies e Gates e use essas diretivas para tornar a experiência do usuário mais informativa e segura.