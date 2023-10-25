# MFSCR
A mfscr é uma ferramenta que pode ser usada para testar e depurar código Laravel. Ela é baseada na ferramenta de depuração da linha de comando do PHP, xdebug, e fornece uma interface gráfica para visualizar os dados do xdebug.

Para usar a mfscr em Laravel, você precisará instalar o xdebug e a mfscr. Você pode fazer isso executando os seguintes comandos no terminal:

```
composer require barryvdh/laravel-debugbar
```

Para habilitar a mfscr, você precisará adicionar o seguinte código ao seu arquivo `config/app.php`:

```php
'providers' => [
    ...
    \Barryvdh\Debugbar\ServiceProvider::class,
    ...
],
```

Em seguida, você precisará habilitar a depuração no seu arquivo `.env`:

```
APP_DEBUG=true
```

Para iniciar a mfscr, você pode executar o seguinte comando no terminal:

```
php artisan debugbar:start
```

A mfscr será iniciada e você poderá visualizar a interface gráfica na seguinte URL:

```
http://localhost:8000/debugbar
```

A interface gráfica da mfscr fornece uma variedade de recursos para testar e depurar código Laravel. Você pode usar a mfscr para:

* Visualizar variáveis e dados de sessão
* Acompanhar consultas SQL
* Visualizar logs de erros
* Depurar código

A mfscr é uma ferramenta poderosa que pode ser usada para melhorar o desenvolvimento de aplicações Laravel.

Aqui estão alguns exemplos de como a mfscr pode ser usada em Laravel:

* Para visualizar variáveis e dados de sessão, você pode usar a seção "Variables" da interface gráfica.
* Para acompanhar consultas SQL, você pode usar a seção "Queries" da interface gráfica.
* Para visualizar logs de erros, você pode usar a seção "Errors" da interface gráfica.
* Para depurar código, você pode usar a seção "Debugger" da interface gráfica.

Para obter mais informações sobre a mfscr, você pode consultar a [documentação oficial](https://github.com/barryvdh/laravel-debugbar)