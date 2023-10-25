# CRIANDO OS MIGRATIONS
Para criar migrações no Laravel, você pode usar o comando `make:migration` do Artisan. Migrações são usadas para definir as alterações no esquema do banco de dados, como a criação de tabelas, a adição de colunas ou a modificação de tabelas existentes. Siga estas etapas para criar uma migração:

1. Abra seu terminal ou prompt de comando.

2. Navegue até a raiz do seu projeto Laravel usando o terminal.

3. Execute o seguinte comando Artisan para criar uma nova migração:

```bash
php artisan make:migration nome_da_migracao
```

Substitua `nome_da_migracao` pelo nome descritivo da migração, que deve ser significativo para o que a migração fará. O Laravel gerará automaticamente um nome de arquivo para a migração no formato `yyyy_mm_dd_hhmmss_nome_da_migracao.php`, onde `yyyy_mm_dd_hhmmss` é um timestamp que garante a ordem de execução das migrações.

4. O Laravel criará um arquivo de migração na pasta `database/migrations` com o nome especificado. Abra o arquivo de migração recém-criado no seu editor de código.

5. No arquivo de migração, você verá dois métodos principais: `up` e `down`. No método `up`, você deve definir as alterações no esquema do banco de dados que deseja aplicar. No método `down`, você deve definir as ações reversas para desfazer as alterações caso seja necessário reverter a migração.

Aqui está um exemplo de uma migração que cria uma tabela de produtos:

```php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProdutosTable extends Migration
{
    public function up()
    {
        Schema::create('produtos', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->decimal('preco', 8, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('produtos');
    }
}
```

Neste exemplo, a migração cria uma tabela chamada `produtos` com colunas para `id`, `nome`, `preco` e `timestamps`.

6. Depois de definir as alterações na migração, você pode executá-la usando o comando `migrate` do Artisan:

```bash
php artisan migrate
```

Isso aplicará a migração e criará a tabela no banco de dados.

Lembre-se de que as migrações são uma parte fundamental do Laravel e facilitam o controle do esquema do banco de dados ao longo do desenvolvimento do seu projeto. Certifique-se de criar migrações sempre que precisar fazer alterações no banco de dados, para que essas alterações sejam refletidas de forma consistente em todos os ambientes.