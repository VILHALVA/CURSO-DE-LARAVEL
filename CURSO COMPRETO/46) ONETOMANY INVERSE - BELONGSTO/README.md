# ONETOMANY INVERSE - BELONGSTO
No Eloquent ORM do Laravel, a relação "One To Many Inverse" é representada usando o método `belongsTo`. Essa relação é usada quando você tem duas tabelas relacionadas, sendo que um registro em uma tabela pertence a outro registro em outra tabela. Em termos simples, é uma relação "muitos para um", onde vários registros de uma tabela estão relacionados a um único registro em outra tabela.

Vamos supor um exemplo prático em que temos duas tabelas: `users` e `posts`. Cada post pertence a um único usuário. Portanto, a tabela de posts tem uma coluna que contém o ID do usuário que é o autor do post. Aqui está como você definiria essa relação no modelo Eloquent:

**Modelo User:**

```php
class User extends Model
{
    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}
```

Neste exemplo, o método `posts` no modelo `User` define uma relação "One To Many" em que um usuário tem muitos posts. A coluna `user_id` na tabela de posts é usada para estabelecer essa relação.

**Modelo Post:**

```php
class Post extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
```

Aqui, o método `user` no modelo `Post` define a relação "One To Many Inverse" (ou seja, "belongs to"), indicando que um post pertence a um usuário. O Laravel assume que a coluna `user_id` é usada como chave estrangeira para estabelecer essa relação.

Com essas definições de modelo, você pode acessar os dados do usuário de um post da seguinte forma:

```php
$post = Post::find(1);
$user = $post->user;
```

Da mesma forma, você pode acessar os posts de um usuário:

```php
$user = User::find(1);
$posts = $user->posts;
```

Essa é uma maneira poderosa de lidar com relacionamentos "One To Many" no Laravel. Certifique-se de que seus modelos e tabelas estejam configurados corretamente e sigam a convenção de nomenclatura do Laravel para que as relações funcionem sem problemas.