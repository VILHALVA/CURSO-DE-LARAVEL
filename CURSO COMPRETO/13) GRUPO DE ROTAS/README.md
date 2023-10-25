# GRUPO DE ROTAS
Os grupos de rotas no Laravel permitem agrupar rotas relacionadas em um único local e aplicar filtros, middleware e configurações comuns a todas as rotas dentro desse grupo. Isso ajuda a manter o código organizado e evita a repetição de configurações em várias rotas. Você pode definir grupos de rotas usando o método `group()` no arquivo `routes/web.php` (ou `routes/api.php` para rotas da API).

Aqui está uma visão geral de como criar e usar grupos de rotas no Laravel:

## Criando um Grupo de Rotas:
Para criar um grupo de rotas, use o método `group()` da seguinte forma:

```php
Route::group(['prefix' => 'admin'], function () {
    // Defina as rotas relacionadas a administradores aqui
});
```

Neste exemplo, todas as rotas definidas dentro da função de retorno serão prefixadas com "/admin". Isso é útil para criar rotas relacionadas a administração de um site, por exemplo.

## Aplicando Middleware a um Grupo de Rotas:
Você pode aplicar middleware a um grupo de rotas para impor restrições de autenticação, autorização, entre outras. Por exemplo:

```php
Route::group(['middleware' => 'auth'], function () {
    // Rotas que exigem autenticação
});
```

Neste exemplo, todas as rotas dentro do grupo exigirão que o usuário esteja autenticado para acessá-las.

## Nomeando Rotas em um Grupo:
Você pode nomear rotas em um grupo da mesma forma que nomeia rotas individuais:

```php
Route::group(['as' => 'admin.'], function () {
    Route::get('dashboard', 'AdminController@dashboard')->name('dashboard');
    Route::get('perfil', 'AdminController@perfil')->name('perfil');
});
```

Aqui, prefixamos os nomes das rotas com "admin." para criar nomes de rota compostos.

## Aplicando Prefixo a Nomes de Rotas em um Grupo:
Você pode aplicar um prefixo a todos os nomes de rotas em um grupo, facilitando a organização de nomes de rota:

```php
Route::group(['as' => 'admin.', 'prefix' => 'admin'], function () {
    Route::get('dashboard', 'AdminController@dashboard')->name('dashboard');
    Route::get('perfil', 'AdminController@perfil')->name('perfil');
});
```

Neste exemplo, as rotas nomeadas "dashboard" e "perfil" têm nomes de rota completos como "admin.dashboard" e "admin.perfil".

## Outras Configurações de Grupo:
Além das opções mencionadas, você pode aplicar várias outras configurações em grupos de rotas, como middlewares globais, namespaces de controladores, domínios, etc. Tudo isso ajuda a manter o código organizado e a aplicar filtros comuns a várias rotas relacionadas.

Os grupos de rotas são uma ferramenta poderosa no Laravel para organizar e gerenciar suas rotas de maneira eficiente, principalmente em aplicativos que possuem várias rotas relacionadas. Eles ajudam a melhorar a clareza, a manutenibilidade e a legibilidade do código.