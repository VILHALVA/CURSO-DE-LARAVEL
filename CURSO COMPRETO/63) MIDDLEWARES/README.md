# MIDDLEWARES
Os middlewares desempenham um papel crucial na definição da lógica intermediária em um aplicativo Laravel. Eles permitem que você execute tarefas antes ou depois de uma solicitação HTTP passar por um controlador. Isso pode incluir autenticação, autorização, manipulação de sessão, registro de atividade e muito mais. O Laravel oferece uma variedade de middlewares integrados e permite que você crie middlewares personalizados. Aqui estão as principais noções sobre middlewares no Laravel:

**Middlewares Integrados:**

O Laravel inclui vários middlewares integrados para lidar com tarefas comuns, como autenticação e proteção CSRF. Alguns middlewares integrados comuns incluem:

- `auth`: Usado para autenticar usuários.
- `guest`: Garante que o usuário não esteja autenticado.
- `throttle`: Limita as solicitações de um usuário para evitar abuso.
- `verified`: Verifica se o email de um usuário foi verificado.
- `web`: Inclui middlewares padrão para aplicativos da web.

**Criando Middlewares Personalizados:**

Você pode criar seus próprios middlewares personalizados para executar tarefas específicas. Para criar um middleware personalizado, você pode usar o comando `make:middleware` do Artisan:

```bash
php artisan make:middleware MeuMiddleware
```

Isso criará um arquivo `MeuMiddleware.php` na pasta `app/Http/Middleware`. Você pode adicionar lógica personalizada ao método `handle` deste middleware.

**Registrando Middlewares:**

Para usar um middleware personalizado, você deve registrá-lo em seu aplicativo. Isso é feito no arquivo `app/Http/Kernel.php`. No atributo `$middleware`, você pode adicionar middlewares globais que serão executados em todas as solicitações. No atributo `$routeMiddleware`, você pode definir middlewares que podem ser aplicados a rotas específicas.

**Aplicando Middlewares a Rotas:**

Você pode aplicar middlewares a rotas em seu arquivo `routes/web.php` ou `routes/api.php`. Por exemplo, para aplicar o middleware `MeuMiddleware` a uma rota, você pode fazer o seguinte:

```php
Route::get('/minha-rota', 'MeuControlador@minhaAcao')->middleware('MeuMiddleware');
```

Você também pode aplicar vários middlewares a uma única rota:

```php
Route::get('/outra-rota', 'OutroControlador@outraAcao')->middleware(['MeuMiddleware', 'auth']);
```

**Parâmetros de Middleware:**

Você pode passar parâmetros para middlewares personalizados quando os registra no Kernel. Isso permite que você personalize o comportamento do middleware com base em parâmetros específicos.

**Prioridade de Middleware:**

Os middlewares são executados na ordem em que são registrados no Kernel. A ordem é importante, pois o resultado de um middleware pode afetar o próximo middleware na pilha.

**Middlewares em Grupos:**

Você pode agrupar várias rotas em um grupo e aplicar um conjunto comum de middlewares a esse grupo.

Estas são as noções básicas sobre middlewares no Laravel. Eles desempenham um papel fundamental na construção de aplicativos web seguros e eficazes. Você pode personalizar middlewares para atender às necessidades específicas do seu aplicativo.