# SEEDER
Em um projeto Laravel, os seeders são usados para preencher o banco de dados com dados de amostra, que são úteis para testar e desenvolver seu aplicativo. Os seeders são especialmente úteis para população inicial de dados em tabelas, como tabelas de referência, tabelas de usuários e tabelas de categorias.

Aqui estão os passos para criar e usar seeders no Laravel:

**Criando um Seeder**:

1. Crie um seeder usando o comando Artisan `make:seeder`. Por exemplo, para criar um seeder para a tabela "categorias":

   ```bash
   php artisan make:seeder CategoriasTableSeeder
   ```

   Isso criará um arquivo de seeder chamado `CategoriasTableSeeder.php` na pasta `database/seeders`.

2. Abra o arquivo do seeder gerado e defina a lógica para inserir registros na tabela. Use o método `DB::table` para inserir dados na tabela. Por exemplo:

   ```php
   public function run()
   {
       DB::table('categorias')->insert([
           ['nome' => 'Eletrônicos'],
           ['nome' => 'Roupas'],
           ['nome' => 'Alimentos'],
       ]);
   }
   ```

**Executando um Seeder**:

Para executar o seeder e popular a tabela com os dados de amostra, siga estas etapas:

1. Abra o arquivo `DatabaseSeeder.php` na pasta `database/seeders`.

2. No método `run`, chame o seeder que você criou. Por exemplo:

   ```php
   public function run()
   {
       $this->call(CategoriasTableSeeder::class);
   }
   ```

   Isso garante que o seeder seja executado quando você executar o comando de atualização do banco de dados.

3. Agora, você pode usar o comando Artisan `db:seed` para executar todos os seeders registrados:

   ```bash
   php artisan db:seed
   ```

   Isso preencherá a tabela "categorias" com os dados de amostra definidos no seeder.

**Executando um Seeder Específico**:

Se você deseja executar um seeder específico, você pode usar o comando `--class` seguido pelo nome da classe do seeder:

```bash
php artisan db:seed --class=CategoriasTableSeeder
```

Isso é útil quando você deseja executar apenas um seeder específico, em vez de todos os seeders registrados no `DatabaseSeeder`.

Os seeders são uma parte valiosa do processo de desenvolvimento, permitindo que você insira rapidamente dados de amostra no banco de dados para testes e desenvolvimento. Eles também são úteis ao implantar seu aplicativo em ambientes de teste e produção para garantir que o banco de dados seja populado corretamente.