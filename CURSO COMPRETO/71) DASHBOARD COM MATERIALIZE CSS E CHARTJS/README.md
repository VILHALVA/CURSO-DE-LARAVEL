# DASHBOARD COM MATERIALIZE CSS E CHARTJS
Para criar um dashboard em um aplicativo Laravel utilizando o Materialize CSS e o Chart.js, siga os passos abaixo:

**Passo 1: Configuração do Projeto**

Certifique-se de que você já configurou um projeto Laravel e instalou o Materialize CSS e o Chart.js. Você pode instalá-los usando o Composer e o NPM:

```bash
composer require laravel/ui
php artisan ui materialize
npm install
```

Isso configurará o Laravel com o Materialize CSS.

**Passo 2: Definir Rotas e Controlador**

Defina as rotas para o seu dashboard no arquivo `routes/web.php` e crie um controlador para lidar com a exibição do painel:

```php
Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
```

Em seguida, crie o controlador com o comando Artisan:

```bash
php artisan make:controller DashboardController
```

**Passo 3: Criar a View do Dashboard**

Crie uma view para o seu painel em `resources/views/dashboard.blade.php`. Esta view conterá o código HTML e JavaScript necessário para exibir os gráficos.

**Passo 4: Integrar o Materialize CSS e o Chart.js**

Dentro da view `dashboard.blade.php`, integre o Materialize CSS e o Chart.js adicionando os links para os arquivos CSS e JS em seu `<head>`:

```html
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
</head>
<body>
    <!-- Conteúdo do painel e gráficos aqui -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
</body>
</html>
```

**Passo 5: Criar Gráficos com Chart.js**

Dentro da view, use o Chart.js para criar os gráficos desejados. Você pode criar um script JavaScript para configurar os dados e renderizar os gráficos. Aqui está um exemplo simples:

```html
<script>
    const ctx = document.getElementById('myChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
            datasets: [{
                label: 'Vendas',
                data: [12, 19, 3, 5, 2],
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
```

Lembre-se de criar o elemento `<canvas>` com um ID (por exemplo, `myChart`) onde o gráfico será renderizado.

**Passo 6: Personalizar o Painel**

Personalize o painel com o Materialize CSS para criar o layout desejado e estilizar os elementos da interface.

**Passo 7: Testar e Publicar**

Acesse a rota do painel definida em `routes/web.php` (por exemplo, `/dashboard`) para visualizar o painel com os gráficos. Certifique-se de que os dados dos gráficos estejam sendo carregados e renderizados corretamente.

**Passo 8: Publicar Assets (Opcional)**

Se você desejar, pode publicar os arquivos CSS e JS do Materialize CSS e do Chart.js para seu projeto Laravel. Use o comando `php artisan vendor:publish` para fazer isso e depois referencie os arquivos CSS e JS locais em vez de usar os links externos.

Lembre-se de que este é apenas um exemplo simples e que você pode criar gráficos mais complexos e personalizados com o Chart.js. Além disso, o Materialize CSS oferece muitos recursos de design que você pode utilizar para personalizar o visual do seu painel.