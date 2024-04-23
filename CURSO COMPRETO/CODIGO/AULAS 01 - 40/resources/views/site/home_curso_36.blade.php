@extends('site.layout')

@section('title', 'ESSA É A HOME')

@section('conteudo')
    {{--Estruturas de controle--}}
    @if($nome == "Rodrigo")
            true
        @else
            false
    @endif
    
    {{-- Estrutura de controle if --}}
    @if($idade >= 18)
        É MAIOR DE IDADE!
    @else
        É MENOR DE IDADE!
    @endif

    {{-- Estrutura de controle unless --}}
    @unless($idade >= 18)
        NÃO É MAIOR DE IDADE!
    @endunless

    {{-- Estrutura de controle isset --}}
    @isset($nome)
        EXISTE A VARIÁVEL NOME!
    @else
        A VARIÁVEL NOME NÃO ESTÁ DEFINIDA!
    @endisset

    {{-- Estrutura de controle empty --}}
    @empty($produtos)
        NÃO HÁ PRODUTOS DISPONÍVEIS!
    @else
        HÁ PRODUTOS DISPONÍVEIS!
    @endempty

    {{-- Estrutura de controle auth --}}
    @auth
        VOCÊ ESTÁ AUTENTICADO!
    @else
        VOCÊ NÃO ESTÁ AUTENTICADO!
    @endauth

    {{-- Estrutura de controle guest --}}
    @guest
        VOCÊ NÃO ESTÁ AUTENTICADO!
    @else
        VOCÊ ESTÁ AUTENTICADO!
    @endguest

    {{-- Estrutura de controle switch --}}
    @switch($idade) 
        @case(28)
            É JOVEM!
            @break
        @case(40)
            É VELHO!
            @break
        @case(12)
            É CRIANÇA!
            @break
        @case(14)
            É ADOLESCENTE!
            @break
        @default
            NÃO FOI DEFINIDO!
    @endswitch
@endsection
