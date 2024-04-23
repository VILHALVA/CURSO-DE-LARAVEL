@extends('site.layout')

@section('title', 'ESSA É A HOME')

@section('conteudo')
   
@include('includes.mensagem', ['titulo' => 'MENSAGEM DE SUCESSO!'])

@component('components.sidebar')
    @slot('paragrafo')
        TEXTO QUALQUER VINDO DO SLOT!
    @endslot
@endcomponent
@endsection
