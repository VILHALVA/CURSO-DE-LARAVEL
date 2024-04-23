<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class ProdutoController extends Controller {
 /***METODO DE LISTAGEM */
    public function index() {
        return 'INDEX';
    }

/***METODO DE EXIBIR RECURSO ESPECIFICO PELO ID */
    public function show($id = 0)
    {
        return 'SHOW = '.$id;
    }
}  