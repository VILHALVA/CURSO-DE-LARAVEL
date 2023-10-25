# CRIANDO TABELAS USERS, CATEGORIAS E PRODUTOS
Para criar tabelas para usuários (Users), categorias (Categorias) e produtos (Produtos) em um projeto Laravel, você pode usar migrações. Migrações permitem definir a estrutura do banco de dados de forma programática. Vamos seguir os passos para criar essas tabelas:

1. **Usuários (Users)**:

   Execute o seguinte comando Artisan para criar uma migração para a tabela de usuários:

   ```bash
   php artisan make:migration create_users_table
   ```

   Abra o arquivo de migração gerado em `database/migrations` e defina a estrutura da tabela de usuários no método `up`. Por exemplo:

   ```php
   public function up()
   {
       Schema::create('users', function (Blueprint $table) {
           $table->id();
           $table->string('name');
           $table->string('email')->unique();
           $table->timestamp('email_verified_at')->nullable();
           $table->string('password');
           $table->rememberToken();
           $table->timestamps();
       });
   }
   ```

   Em seguida, execute a migração para criar a tabela de usuários:

   ```bash
   php artisan migrate
   ```

2. **Categorias (Categorias)**:

   Execute o seguinte comando Artisan para criar uma migração para a tabela de categorias:

   ```bash
   php artisan make:migration create_categorias_table
   ```

   Abra o arquivo de migração gerado e defina a estrutura da tabela de categorias no método `up`. Por exemplo:

   ```php
   public function up()
   {
       Schema::create('categorias', function (Blueprint $table) {
           $table->id();
           $table->string('nome');
           $table->timestamps();
       });
   }
   ```

   Execute a migração para criar a tabela de categorias:

   ```bash
   php artisan migrate
   ```

3. **Produtos (Produtos)**:

   Execute o seguinte comando Artisan para criar uma migração para a tabela de produtos:

   ```bash
   php artisan make:migration create_produtos_table
   ```

   Abra o arquivo de migração gerado e defina a estrutura da tabela de produtos no método `up`. Por exemplo:

   ```php
   public function up()
   {
       Schema::create('produtos', function (Blueprint $table) {
           $table->id();
           $table->string('nome');
           $table->text('descricao');
           $table->decimal('preco', 8, 2);
           $table->unsignedBigInteger('categoria_id');
           $table->timestamps();
       });
   }
   ```

   Certifique-se de adicionar uma coluna `categoria_id` que será usada para estabelecer uma relação com a tabela de categorias.

   Execute a migração para criar a tabela de produtos:

   ```bash
   php artisan migrate
   ```

Após seguir esses passos, as tabelas Users, Categorias e Produtos estarão criadas no seu banco de dados e prontas para serem utilizadas no seu aplicativo Laravel. Certifique-se de que as migrações estejam corretamente configuradas e de que a estrutura do banco de dados atenda aos requisitos do seu projeto.