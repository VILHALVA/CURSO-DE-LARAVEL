<?php

use Illuminate\Support\Facades\Route;

// Rota padrão que retorna a view 'welcome'
Route::get('/', function () {
    return view('welcome');
});

// Rota que aceita qualquer tipo de requisição HTTP e retorna uma mensagem
Route::any('/any', function () {
    return 'Permitido Todo tipo de acesso HTTP (GET, POST, PUT, DELETE)';
});

// Rota que aceita apenas requisições PUT e DELETE e retorna uma mensagem
Route::match(['put', 'delete'], '/match', function () {
    return 'Só é permitido acessos Definidos!';
});

// Rota com parâmetros opcionais que retorna uma mensagem com o ID do produto e a categoria
Route::get('/produto/{id?}/{cat?}', function ($id = '', $cat = '') {
    return "O ID do produto é ".$id. "<br>". "A categoria é ".$cat;
});

// Rota de redirecionamento permanente '/sobre' para '/empresa'
Route::redirect('/sobre', 'empresa');

// Rota que retorna a view 'site/empresa'
Route::view('/empresa', 'site/empresa');

// Rota que retorna a view 'news' com o nome 'NOTICIAS'
Route::get('/news', function () {
    return view('news');
})->name('NOTICIAS');

// Rota que redireciona para a rota nomeada 'NOTICIAS' (que retorna a view 'news')
Route::get('/novidades', function () {
    return redirect()->route('NOTICIAS');
});
