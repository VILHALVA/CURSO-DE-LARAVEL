<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProdutoController;

//Puxando a api do produto
Route::resource('produtos',ProdutoController::class);
