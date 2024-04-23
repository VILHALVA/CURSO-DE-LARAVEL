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

@push('style')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
@endpush

@push('script')
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
