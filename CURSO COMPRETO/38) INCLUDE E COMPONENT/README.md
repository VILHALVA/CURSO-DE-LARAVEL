# INCLUDE E COMPONENT
No Laravel, `@include` e `@component` são duas funcionalidades que facilitam a reutilização de partes de código em suas views Blade, tornando o código mais organizado e mais fácil de manter. Vou explicar cada um deles:

## `@include`
A diretiva `@include` permite que você inclua uma view Blade dentro de outra view. Isso é útil quando você deseja reutilizar uma parte de HTML em várias páginas. Aqui está como você pode usá-lo:

```php
@include('nome-da-view')
```

- `nome-da-view` é o nome da view que você deseja incluir. O Laravel irá procurá-la na pasta `resources/views`.

**Exemplo:**

Suponha que você tenha uma view chamada `header.blade.php` que contém o cabeçalho comum de todas as páginas do seu site. Para incluí-lo em uma view, você faria o seguinte:

```php
<!DOCTYPE html>
<html>
<head>
    <!-- Cabeçalho comum -->
    @include('header')
</head>
<body>
    <!-- Conteúdo da página -->
</body>
</html>
```

Dessa forma, você pode reutilizar o cabeçalho em todas as páginas, tornando o código mais limpo e evitando duplicação.

## `@component`
O `@component` é usado para criar componentes reutilizáveis em suas views. Os componentes são pedaços de código que encapsulam funcionalidades específicas e permitem que você os reutilize em várias partes de seu aplicativo. Para criar um componente, você pode usar a diretiva `@component` e, em seguida, referenciá-lo usando a diretiva `@slot`. Aqui está como funciona:

```php
@component('nome-do-componente')
    @slot('variavel', $valor)
    <!-- Conteúdo do componente -->
@endcomponent
```

- `nome-do-componente` é o nome do componente que você deseja criar ou usar.
- `variavel` é um slot que você pode passar para o componente.

**Exemplo:**

Suponha que você deseja criar um componente de botão personalizado que pode ser usado em todo o seu aplicativo. Você pode criar um componente chamado `botao` da seguinte forma:

Crie um arquivo `botao.blade.php` em `resources/views/components`:

```php
<!-- resources/views/components/botao.blade.php -->
<button class="btn {{ $cor }}">
    {{ $slot }}
</button>
```

Agora, você pode usar esse componente em qualquer view:

```php
@component('components.botao')
    @slot('cor', 'btn-primary')
    Clique em mim
@endcomponent
```

Neste exemplo, o componente de botão permite personalizar a classe do botão e o texto do botão, tornando-o reutilizável em todo o aplicativo.

Usar `@include` e `@component` no Laravel ajuda a manter suas views organizadas, evitando a duplicação de código e tornando seu código mais legível e fácil de manter. Eles são especialmente úteis para criar e reutilizar partes de código comuns em seu aplicativo da web.