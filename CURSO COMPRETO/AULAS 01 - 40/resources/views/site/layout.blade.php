<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <!-- Compiled and minified CSS -->
    @stack('style')
</head>
<body>
    @yield('conteudo')

<!-- Compiled and minified JavaScript -->
@stack('script')
</body>
</html>