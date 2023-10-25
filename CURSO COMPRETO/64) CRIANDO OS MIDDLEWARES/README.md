# CRIANDO OS MIDDLEWARES
Para criar middlewares personalizados em um aplicativo Laravel, você pode seguir os seguintes passos:

**Passo 1: Criar um Middleware Personalizado**

Use o comando `make:middleware` do Artisan para criar um novo middleware. Substitua `MeuMiddleware` pelo nome do middleware que você deseja criar:

```bash
php artisan make:middleware MeuMiddleware
```

Isso criará um arquivo `MeuMiddleware.php` na pasta `app/Http/Middleware`. Este arquivo conterá uma classe de middleware com um método `handle`.

**Passo 2: Implementar a Lógica do Middleware**

Dentro do arquivo `MeuMiddleware.php`, implemente a lógica do middleware no método `handle`. Este método é executado para cada solicitação que passa pelo middleware. Você pode adicionar lógica de pré-processamento ou pós-processamento aqui. Por exemplo, você pode verificar se um usuário tem permissão para acessar uma determinada rota, registrar informações de registro, ou qualquer outra tarefa intermediária que desejar.

Aqui está um exemplo simples de um middleware que registra o horário de início de uma solicitação:

```php
<?php

namespace App\Http\Middleware;

use Closure;

class MeuMiddleware
{
    public function handle($request, Closure $next)
    {
        // Registre o horário de início da solicitação
        $startTime = now();
        \Log::info("Início da solicitação em: " . $startTime);

        // Continue a execução da solicitação
        return $next($request);
    }
}
```

**Passo 3: Registrar o Middleware**

Para que o Laravel saiba sobre o seu middleware personalizado, você precisa registrá-lo no arquivo `app/Http/Kernel.php`. O Kernel é responsável por gerenciar middlewares em seu aplicativo.

Dentro do arquivo Kernel, você encontrará dois arrays principais: `$middleware` (para middlewares globais) e `$routeMiddleware` (para middlewares de rota).

No `$middleware`, você pode adicionar middlewares que serão executados globalmente em todas as solicitações. No `$routeMiddleware`, você pode definir middlewares que podem ser aplicados a rotas específicas.

**Passo 4: Aplicar o Middleware a Rotas ou Grupos de Rotas**

Agora que o middleware está criado e registrado, você pode aplicá-lo a rotas ou grupos de rotas. Para aplicar um middleware a uma rota específica, você pode fazer o seguinte:

```php
Route::get('/minha-rota', 'MeuControlador@minhaAcao')->middleware('MeuMiddleware');
```

Para aplicar o middleware a todas as rotas em um grupo, você pode fazer o seguinte:

```php
Route::middleware(['MeuMiddleware'])->group(function () {
    // Defina as rotas aqui
});
```

**Passo 5: Testar o Middleware**

Agora que o middleware está configurado e aplicado a rotas, você pode testá-lo acessando as rotas afetadas pelo middleware. No exemplo do middleware de registro de horário de início, você pode verificar os registros de log para ver se o middleware está funcionando corretamente.

Lembre-se de que os middlewares podem ser poderosas ferramentas para adicionar lógica intermediária em seu aplicativo Laravel. Eles podem ser usados para várias finalidades, como autenticação, autorização, registro de atividade, manipulação de sessão e muito mais. Certifique-se de personalizar seu middleware de acordo com os requisitos específicos do seu aplicativo.