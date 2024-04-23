@extends('site.layout')

@section('title', 'ESSA É A HOME')

@section('conteudo')
    {{-- Estrutura de repetição for --}}
    @for($i = 0; $i < 5; $i++)
        NO FOR O número é {{ $i }} <br>
    @endfor

    {{-- Estrutura de repetição while --}}
    @php
        $i = 0;
    @endphp

    @while($i < 5)
        NO WHILE O número é {{ $i }} <br>
        @php
            $i++;
        @endphp
    @endwhile

    {{-- Estrutura de repetição for com $flutas --}}
    @for($i = 0; $i < count($flutas); $i++) 
        {{ $flutas[$i] }} <br>
    @endfor

    {{-- Estrutura de repetição foreach com $flutas --}}
    @foreach($flutas as $fluta) 
        {{ $fluta }} <br>
    @endforeach
    
@endsection
