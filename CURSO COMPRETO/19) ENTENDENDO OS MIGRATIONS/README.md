# ENTENDENDO OS MIGRATIONS
No Laravel, os migrations (migrações) são uma forma de versionar o banco de dados, permitindo que você crie, modifique e exclua tabelas e seus esquemas de maneira controlada, através de código PHP. Isso facilita o controle da estrutura do banco de dados e torna a colaboração entre desenvolvedores mais eficiente.

Aqui estão os conceitos básicos e a maneira de usar migrações no Laravel:

## Criando uma Migração:
Para criar uma migração, você pode usar o comando Artisan `make:migration`. Por exemplo, para criar uma migração para uma tabela "produtos", você pode executar o seguinte comando:

```bash
php artisan make:migration create_produtos_table
```

Isso criará um arquivo de migração na pasta `database/migrations` com um nome de arquivo timestamp correspondente, como `2023_10_25_000000_create_produtos_table.php`. O nome da migração é gerado automaticamente com base no nome que você forneceu no comando.

## Editando uma Migração:
Dentro do arquivo de migração recém-criado, você encontrará dois métodos principais: `up` e `down`. No método `up`, você define as ações que serão executadas ao aplicar a migração (por exemplo, criar uma tabela). No método `down`, você define as ações de reversão para desfazer a migração (por exemplo, excluir a tabela).

Aqui está um exemplo de como criar uma tabela "produtos" em uma migração:

```php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProdutosTable extends Migration {
    public function up() {
        Schema::create('produtos', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->integer('preco');
            $table->timestamps();
        });
    }

    public function down() {
        Schema::dropIfExists('produtos');
    }
}
```

## Executando Migrações:
Para executar as migrações e aplicar as alterações no banco de dados, use o comando Artisan `migrate`:

```bash
php artisan migrate
```

Isso executará todas as migrações pendentes e criará as tabelas especificadas nos arquivos de migração.

## Revertendo Migrações:
Se você precisar desfazer uma migração, pode usar o comando `migrate:rollback`:

```bash
php artisan migrate:rollback
```

Isso desfaz a última migração executada e chama o método `down` correspondente no arquivo de migração.

## Listando Migrações:
Você pode listar todas as migrações executadas e pendentes usando o comando `migrate:status`:

```bash
php artisan migrate:status
```

Isso exibirá uma lista de todas as migrações e seu status (executado ou pendente).

Os migrations são uma parte importante do desenvolvimento no Laravel, pois permitem que você versione seu esquema de banco de dados e realize modificações no banco de dados de forma organizada. Eles são particularmente úteis em projetos colaborativos e ao implantar atualizações no banco de dados em produção.