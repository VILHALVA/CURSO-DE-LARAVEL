# PASSANDO PARÂMETROS PARA O CONTROLLER
No Laravel, é comum passar parâmetros para os métodos de um controlador a partir das rotas. Você pode fazer isso de várias maneiras, dependendo das suas necessidades. Aqui estão algumas maneiras comuns de passar parâmetros para um controlador:

## Parâmetros de Rota:
Você pode capturar parâmetros de rota diretamente no método do controlador, definindo-os na rota. Por exemplo:

```php
Route::get('/produtos/{id}', 'ProdutoController@show');
```

No método `show` do `ProdutoController`, você pode acessar o parâmetro `{id}`:

```php
public function show($id) {
    // Lógica para mostrar detalhes do produto com o ID fornecido
}
```

Os parâmetros capturados das rotas são passados como argumentos para os métodos do controlador.

## Parâmetros de Consulta (Query Parameters):
Você pode passar parâmetros para o controlador por meio da URL usando parâmetros de consulta. Por exemplo:

```php
Route::get('/buscar', 'ProdutoController@buscar');
```

No método `buscar` do `ProdutoController`, você pode acessar parâmetros de consulta usando a classe `Request`:

```php
use Illuminate\Http\Request;

public function buscar(Request $request) {
    $termo = $request->input('termo');
    // Lógica para buscar produtos com o termo fornecido
}
```

Os parâmetros de consulta são úteis quando você precisa passar informações adicionais na URL, como filtros de pesquisa.

## Parâmetros de Formulário:
Se você está lidando com dados de formulário POST, pode passar esses dados como parâmetros para o método do controlador. Por exemplo:

```php
Route::post('/salvar-produto', 'ProdutoController@salvar');
```

No método `salvar` do `ProdutoController`, você pode acessar os dados do formulário usando a classe `Request`:

```php
use Illuminate\Http\Request;

public function salvar(Request $request) {
    $nome = $request->input('nome');
    $preco = $request->input('preco');
    // Lógica para salvar o produto com os dados fornecidos no formulário
}
```

Esses são alguns dos métodos comuns para passar parâmetros para métodos de controlador no Laravel. A escolha de qual método usar depende da natureza dos dados que você está passando e do tipo de solicitação HTTP com a qual está lidando. O Laravel oferece flexibilidade para lidar com diferentes tipos de dados e interações de usuário em seus aplicativos web.