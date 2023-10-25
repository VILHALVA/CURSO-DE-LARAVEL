# REDIRECTWITH
O método `redirectWith` não é um método nativo no Laravel. No entanto, você pode criar uma função personalizada para alcançar o mesmo resultado. O objetivo do `redirectWith` seria redirecionar o usuário para uma nova página e incluir dados na sessão para que esses dados estejam disponíveis na página de destino após o redirecionamento.

Aqui está um exemplo de como criar uma função `redirectWith` personalizada em um controlador Laravel:

```php
use Illuminate\Http\Request;

class SeuControlador extends Controller
{
    public function redirecionarComDados(Request $request)
    {
        // Dados que você deseja incluir na sessão
        $dados = ['mensagem' => 'Os dados foram enviados com sucesso!'];

        // Coloque os dados na sessão
        $request->session()->flash('dados', $dados);

        // Redirecione o usuário para outra página
        return redirect()->route('outra-rota');
    }

    public function outraRota(Request $request)
    {
        // Recupere os dados da sessão (se existirem)
        $dados = $request->session()->get('dados');

        return view('outra-pagina', compact('dados'));
    }
}
```

Neste exemplo, temos duas funções em um controlador. A primeira função, `redirecionarComDados`, coloca os dados que você deseja incluir na sessão usando o método `flash` na sessão. Em seguida, redireciona o usuário para outra rota.

A segunda função, `outraRota`, é a rota de destino para onde o usuário foi redirecionado. Ela recupera os dados da sessão (se existirem) usando o método `get` e os passa para a view.

Agora, na view "outra-pagina.blade.php", você pode acessar os dados como `$dados`:

```php
@if(isset($dados))
    <div class="alert alert-success">
        {{ $dados['mensagem'] }}
    </div>
@endif
```

Dessa forma, você pode realizar redirecionamentos com dados personalizados usando a sessão no Laravel. Isso é útil para passar mensagens de sucesso, erros ou qualquer outro tipo de informação entre diferentes páginas em seu aplicativo.