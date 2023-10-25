# SECTION, YIELD E EXTENDS
As diretivas `@section`, `@yield` e `@extends` são recursos essenciais do mecanismo de templates Blade no Laravel, que permitem criar layouts mestres (master layouts) e reutilizar partes comuns de uma interface de usuário em várias views. Aqui está uma explicação de cada um desses recursos:

1. **@section**:
   - A diretiva `@section` é usada para definir uma seção em uma view. Uma seção é uma área na view onde você pode inserir conteúdo específico.
   - Exemplo de uso:
   ```php
   @section('content')
       <h1>Título da Página</h1>
       <p>Conteúdo da página.</p>
   @endsection
   ```
   - Neste exemplo, a seção "content" é definida com um título e conteúdo. Esta seção pode ser preenchida com conteúdo personalizado em views que estendem esta view mestra.

2. **@yield**:
   - A diretiva `@yield` é usada para exibir o conteúdo de uma seção definida usando `@section`. Você pode pensar nisso como um ponto de inserção para o conteúdo personalizado.
   - Exemplo de uso em uma view mestra:
   ```php
   <div class="container">
       @yield('content')
   </div>
   ```
   - Neste exemplo, o conteúdo da seção "content" será exibido no local onde `@yield('content')` está localizado na view mestra.

3. **@extends**:
   - A diretiva `@extends` é usada para estender uma view mestra em uma view filha. Isso permite que você defina o conteúdo específico da página e, ao mesmo tempo, mantenha a estrutura geral definida na view mestra.
   - Exemplo de uso em uma view filha:
   ```php
   @extends('layouts.master')
   
   @section('content')
       <h1>Página de Detalhes do Produto</h1>
       <p>Detalhes do produto vão aqui.</p>
   @endsection
   ```
   - Neste exemplo, a view "layouts.master" é estendida, e o conteúdo da seção "content" é preenchido com conteúdo personalizado.

Usando essas diretivas em conjunto, você pode criar layouts mestres que definem a estrutura comum para várias páginas do seu aplicativo e, em seguida, criar views filhas que estendem esses layouts mestres e preenchem as seções com conteúdo específico da página.

Isso ajuda a manter um código organizado e a reutilizar a estrutura da interface do usuário em todo o seu aplicativo Laravel. É uma prática recomendada para criar páginas consistentes e manter seu código mais limpo e fácil de manter.