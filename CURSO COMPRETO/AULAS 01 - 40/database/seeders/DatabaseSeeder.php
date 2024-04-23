<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Função desativada na aula 27:
        /*$this->call([
            UsersSeeder::class,
        ]);*/
        
        // Função desativada na aula 29:
        // $this->call(CategoriasSeeder::class);

        $this->call([
            // UsersSeeder::class,
            // CategoriasSeeder::class,
            ProdutosSeeder::class,
        ]);
    }
}
