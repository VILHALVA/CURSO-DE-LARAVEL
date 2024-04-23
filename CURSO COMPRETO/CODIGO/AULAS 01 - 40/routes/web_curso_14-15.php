<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProdutoController;

//primeira rota, aqui esta retornando a view welcome
Route::get('/', [ProdutoController::class , 'index'])->name('produto.index'); //Criando os controlers

Route::get('/produto/{id?}', [ProdutoController::class , 'show'])->name('produto.show'); //Criando os controlers

Route::get('/produto/{id?}', [ProdutoController::class , 'show'])->name('produto.show'); //Criando os controlers
