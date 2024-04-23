<?php

use Illuminate\Support\Facades\Route;

// Rota padrão que retorna a view 'welcome'
Route::get('/', function () {
    return redirect()->route('admin.clientes');
});

// Criando grupo de rotas com nomes e prefixos definidos
Route::group([
    'prefix' => 'admin', // Definindo o prefixo das rotas
    'as' => 'admin.' // Definindo o nome das rotas
], function(){

    Route::get('dashboard', function(){
        return 'dashboard';
    })->name('dashboard');
    
    Route::get('users', function(){
        return 'users';
    })->name('users');
    
    Route::get('clientes', function(){
        return 'clientes';
    })->name('clientes');
});
