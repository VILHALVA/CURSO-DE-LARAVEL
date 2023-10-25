# EDITANDO E EXCLUINDO TABELAS
No Laravel, você pode editar e excluir tabelas no banco de dados usando migrações. Migrações permitem que você altere o esquema do banco de dados de forma controlada. Aqui estão os passos para editar e excluir tabelas:

## Editando Tabelas:
Para editar uma tabela existente, siga estes passos:

1. Crie uma nova migração usando o comando `make:migration`. Por exemplo:

```bash
php artisan make:migration editar_tabela_produtos
```

2. Abra o arquivo de migração recém-criado na pasta `database/migrations` no seu editor de código.

3. No método `up` da migração, use as funções do Laravel para fazer as alterações desejadas na tabela. Por exemplo, para adicionar uma nova coluna à tabela "produtos":

```php
public function up()
{
    Schema::table('produtos', function (Blueprint $table) {
        $table->string('descricao')->nullable();
    });
}
```

4. Execute a migração usando o comando `migrate`:

```bash
php artisan migrate
```

Isso aplicará a migração e fará as alterações na tabela existente.

## Excluindo Tabelas:
Para excluir uma tabela, você pode criar uma nova migração para remover a tabela e, em seguida, executá-la. Siga estes passos:

1. Crie uma nova migração usando o comando `make:migration`. Por exemplo:

```bash
php artisan make:migration excluir_tabela_produtos
```

2. Abra o arquivo de migração recém-criado na pasta `database/migrations` no seu editor de código.

3. No método `up` da migração, use a função `drop` para excluir a tabela. Por exemplo:

```php
public function up()
{
    Schema::dropIfExists('produtos');
}
```

4. Execute a migração usando o comando `migrate`:

```bash
php artisan migrate
```

Isso aplicará a migração e excluirá a tabela especificada.

Certifique-se de que as alterações na estrutura do banco de dados sejam aplicadas de forma controlada por meio de migrações. Isso ajuda a manter a consistência do banco de dados em diferentes ambientes e facilita a colaboração entre desenvolvedores. Lembre-se de fazer backup dos dados importantes antes de excluir tabelas, pois a exclusão de uma tabela resultará na perda permanente dos dados contidos nela.