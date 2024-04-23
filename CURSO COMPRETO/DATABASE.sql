-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/04/2024 às 19:03
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cursolaravel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'aliquam', 'Eum praesentium et quo ducimus voluptas delectus. Cum et quo maxime et ipsum nihil beatae quia. Minima adipisci molestiae hic perferendis. Esse voluptatem earum sunt adipisci voluptates.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(2, 'deleniti', 'Nemo expedita doloribus necessitatibus fugiat est. Optio et voluptas ad. Ex voluptate ut quia dolores qui. Id magni aliquam sit nobis.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(3, 'deserunt', 'Cupiditate incidunt voluptatem et maxime nesciunt. Culpa ut iste sed ea. Cum nobis vitae maiores expedita omnis.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(4, 'reiciendis', 'Quibusdam soluta ea sed unde modi. Incidunt tempora nesciunt maxime quia beatae consequatur. Quia et nulla amet illo quia.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(5, 'at', 'Assumenda eaque facere nam eveniet quia ratione. Voluptatem deserunt neque saepe cum architecto saepe est. Ut eligendi itaque aut qui esse modi deleniti. Saepe id voluptas consequatur adipisci.', '2024-04-13 02:50:20', '2024-04-13 02:50:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2024_04_12_205252_create_categorias_table', 1),
(10, '2024_04_12_205253_produtos', 1),
(11, '2024_04_12_224710_regras', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` double NOT NULL,
  `slug` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `slug`, `imagem`, `id_user`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Dolorum occaecati aliquid et labore.', 'Ab ut perferendis porro voluptas. Aut veritatis dolorem sed aliquid. Sunt natus repellendus omnis tenetur totam.', 93, 'dolorum-occaecati-aliquid-et-labore', 'https://via.placeholder.com/400x400.png/0099bb?text=modi', 1, 3, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(2, 'Consequatur vero facere magnam aut velit blanditiis culpa dolorum.', 'Non possimus ratione ut quasi nobis expedita. Nemo quo quidem suscipit. Et et ducimus perspiciatis facilis debitis consequatur.', 22, 'consequatur-vero-facere-magnam-aut-velit-blanditiis-culpa-dolorum', 'https://via.placeholder.com/400x400.png/0077aa?text=occaecati', 1, 5, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(3, 'Nostrum corporis cupiditate non magnam saepe eligendi ut quidem.', 'Quasi et quia omnis quibusdam. Totam et adipisci aspernatur tempore rem. Ut voluptatibus excepturi eligendi tempora sed.', 24, 'nostrum-corporis-cupiditate-non-magnam-saepe-eligendi-ut-quidem', 'https://via.placeholder.com/400x400.png/0044ee?text=nostrum', 1, 1, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(4, 'Repudiandae minus atque quod quas consectetur illo suscipit.', 'Quis aut eligendi ut qui. Nostrum omnis harum nobis. Sequi deleniti optio modi laboriosam. Pariatur qui eum velit doloremque perspiciatis quia explicabo.', 27, 'repudiandae-minus-atque-quod-quas-consectetur-illo-suscipit', 'https://via.placeholder.com/400x400.png/0055bb?text=veniam', 1, 4, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(5, 'Quasi aliquid quam et.', 'Soluta rerum voluptatem ullam pariatur cum. Magnam fuga deserunt consequatur ipsa autem. Qui et nulla et perspiciatis repellat repudiandae.', 74, 'quasi-aliquid-quam-et', 'https://via.placeholder.com/400x400.png/0077cc?text=a', 1, 4, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(6, 'Minima quibusdam est cupiditate.', 'Quas expedita qui voluptas esse eveniet unde. Sit veniam nihil quasi aliquam. Cum et molestiae debitis minima. Exercitationem sed incidunt labore autem aspernatur libero repudiandae.', 91, 'minima-quibusdam-est-cupiditate', 'https://via.placeholder.com/400x400.png/009988?text=molestiae', 1, 3, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(7, 'Recusandae sit maxime ducimus quae et.', 'Provident iusto in maiores saepe iure aut velit. Soluta distinctio quia sed eum. Nam rem blanditiis nemo repudiandae ea ut dolorem.', 82, 'recusandae-sit-maxime-ducimus-quae-et', 'https://via.placeholder.com/400x400.png/007799?text=at', 1, 2, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(8, 'Rerum unde maiores odit ipsa placeat.', 'Sunt qui deleniti autem quasi quis natus. Ut nostrum dolorem minus qui repudiandae. At praesentium alias omnis assumenda.', 99, 'rerum-unde-maiores-odit-ipsa-placeat', 'https://via.placeholder.com/400x400.png/00ff88?text=amet', 1, 5, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(9, 'Rerum autem provident quasi voluptatibus ad.', 'Enim sed quia quia et ipsa voluptate aliquam. Voluptatum corrupti consequatur consequuntur reiciendis impedit. Quod voluptatem nihil quae eum. Qui ea ea praesentium velit fugit eligendi iusto.', 22, 'rerum-autem-provident-quasi-voluptatibus-ad', 'https://via.placeholder.com/400x400.png/0088ff?text=doloremque', 1, 3, '2024-04-13 03:18:18', '2024-04-13 03:18:18'),
(10, 'Et et ducimus assumenda eligendi aspernatur nihil.', 'At repellat recusandae veniam repellat voluptatibus rerum ut. Sit officia asperiores quidem distinctio. Eius quas nihil possimus rerum aut esse. Dolorem dolores eos provident temporibus et.', 14, 'et-et-ducimus-assumenda-eligendi-aspernatur-nihil', 'https://via.placeholder.com/400x400.png/007766?text=atque', 1, 4, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(11, 'Tempora quis laudantium cum esse aut eveniet.', 'Voluptatem aspernatur consequatur quisquam earum autem distinctio. Aliquam quis ut est laborum facere excepturi.', 68, 'tempora-quis-laudantium-cum-esse-aut-eveniet', 'https://via.placeholder.com/400x400.png/008877?text=velit', 1, 2, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(12, 'Asperiores id sequi dolor maiores tempora.', 'Nesciunt aspernatur est cupiditate. Ea adipisci eos provident excepturi. Sint dolores ut error fugit. Excepturi aut maiores est iure quos.', 36, 'asperiores-id-sequi-dolor-maiores-tempora', 'https://via.placeholder.com/400x400.png/00ddbb?text=sunt', 1, 2, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(13, 'Illo qui voluptate fugiat dignissimos qui maiores sunt.', 'Officiis dolor id quisquam necessitatibus ut a. Mollitia ea consequatur sed nisi officia quos. Sunt dolor tempore provident unde distinctio qui in. Eum rerum pariatur explicabo.', 42, 'illo-qui-voluptate-fugiat-dignissimos-qui-maiores-sunt', 'https://via.placeholder.com/400x400.png/0044bb?text=aliquid', 1, 3, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(14, 'Est necessitatibus magni ratione dolor ut.', 'Quis magni sint molestiae non consequuntur. Blanditiis mollitia dolor ut dicta eos tempore. Quia quia blanditiis voluptas unde assumenda.', 95, 'est-necessitatibus-magni-ratione-dolor-ut', 'https://via.placeholder.com/400x400.png/0000aa?text=non', 1, 3, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(15, 'Possimus mollitia facere fuga doloremque minus ab.', 'Veniam rerum velit eum illo exercitationem et sit. Et molestiae quo aspernatur dolore totam repudiandae. Non eos et totam optio. Modi ex voluptatum placeat omnis asperiores.', 60, 'possimus-mollitia-facere-fuga-doloremque-minus-ab', 'https://via.placeholder.com/400x400.png/002277?text=sint', 1, 5, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(16, 'Nobis commodi unde tenetur quod.', 'Eum rerum ex ut voluptatem vitae voluptatum perspiciatis. Sint laborum autem dolorum quibusdam quasi similique rerum. Eum consectetur dicta earum laborum repellat sed. Itaque fugit voluptatem ex placeat.', 40, 'nobis-commodi-unde-tenetur-quod', 'https://via.placeholder.com/400x400.png/00bb66?text=voluptatem', 1, 3, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(17, 'Sed eos quibusdam necessitatibus provident.', 'Temporibus possimus ut placeat minus fugiat voluptatem maiores. Excepturi laborum quisquam sed et exercitationem quos recusandae. Omnis dolorem non unde omnis tempore voluptas.', 37, 'sed-eos-quibusdam-necessitatibus-provident', 'https://via.placeholder.com/400x400.png/008899?text=facere', 1, 1, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(18, 'Facilis dolor dolorem labore.', 'Est libero recusandae distinctio dicta nihil eos. Qui minima voluptas cum minima architecto eum. Numquam minus dolorem accusantium neque adipisci.', 96, 'facilis-dolor-dolorem-labore', 'https://via.placeholder.com/400x400.png/00dd66?text=rem', 1, 5, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(19, 'Quam tenetur ullam ipsum doloremque voluptatum.', 'Quis praesentium natus quaerat ut autem magni. Molestiae eos enim temporibus reprehenderit iusto. Nemo fugit et esse pariatur eos. Doloremque dolor voluptatem et aspernatur adipisci ipsum sint.', 60, 'quam-tenetur-ullam-ipsum-doloremque-voluptatum', 'https://via.placeholder.com/400x400.png/00bbff?text=expedita', 1, 3, '2024-04-13 03:18:19', '2024-04-13 03:18:19'),
(20, 'Fuga dolore laboriosam nesciunt.', 'Vitae sunt dolores nemo vero nam. Et et a voluptatem eos alias iste.', 48, 'fuga-dolore-laboriosam-nesciunt', 'https://via.placeholder.com/400x400.png/003366?text=sit', 1, 4, '2024-04-13 03:18:19', '2024-04-13 03:18:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `regras`
--

CREATE TABLE `regras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `regra_user`
--

CREATE TABLE `regra_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_regra` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6yytak8D1RmB8bXY3zPPuQMjqcI1P2pjB3z9Jils', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3dXT2FOZ21EQWZRUFQySHRXWUVFN3pKeEloMG5YTUxMTVVtaXlsRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdXRvL3JlcnVtLWF1dGVtLXByb3ZpZGVudC1xdWFzaS12b2x1cHRhdGlidXMtYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713380255);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Oliveira', 'contato@gmail.com', NULL, '$2y$12$jZMf8UNBCVct90bZhKJhg.dGrTEqC8f5q3aOoRzQUIUCaimxUteKi', NULL, '2024-04-13 02:31:35', '2024-04-13 02:31:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_id_user_foreign` (`id_user`),
  ADD KEY `produtos_id_categoria_foreign` (`id_categoria`);

--
-- Índices de tabela `regras`
--
ALTER TABLE `regras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `regra_user`
--
ALTER TABLE `regra_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regra_user_id_user_foreign` (`id_user`),
  ADD KEY `regra_user_id_regra_foreign` (`id_regra`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `regras`
--
ALTER TABLE `regras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `regra_user`
--
ALTER TABLE `regra_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `regra_user`
--
ALTER TABLE `regra_user`
  ADD CONSTRAINT `regra_user_id_regra_foreign` FOREIGN KEY (`id_regra`) REFERENCES `regras` (`id`),
  ADD CONSTRAINT `regra_user_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
