# REMEMBER
O recurso "Remember Me" (Lembrar-me) é comum em sistemas de autenticação de aplicativos web. Ele permite que os usuários permaneçam autenticados por um período prolongado, mesmo depois de fecharem o navegador ou saírem do aplicativo. Isso é útil para evitar que os usuários tenham que fazer login repetidamente. No Laravel, você pode implementar o recurso "Remember Me" facilmente em seu sistema de autenticação.

Aqui estão os passos para implementar o "Remember Me" em um aplicativo Laravel:

**Passo 1: Atualize a Tabela de Usuários**

Certifique-se de que sua tabela de usuários no banco de dados tenha um campo `remember_token`. Este campo é usado para armazenar o token de autenticação de "Lembrar-me". Se você gerou o sistema de autenticação usando o Artisan ou seguiu as convenções do Laravel, esse campo já deve existir. Caso contrário, você pode adicioná-lo manualmente à tabela de usuários.

**Passo 2: Configuração da Autenticação**

Abra o arquivo de configuração de autenticação `config/auth.php`. Certifique-se de que a configuração do guard padrão seja `'web'` e que o driver de sessão seja `'database'`:

```php
'guards' => [
    'web' => [
        'driver' => 'session',
        'provider' => 'users',
    ],
],
```

**Passo 3: Habilitando o "Remember Me"**

Ao autenticar o usuário em seu controlador de autenticação, verifique se o método `attempt` leva em consideração o "Remember Me". O Laravel cuidará disso automaticamente se você estiver usando o sistema de autenticação gerado pelo Artisan. Por exemplo:

```php
if (Auth::attempt(['email' => $email, 'password' => $password], $remember)) {
    // Autenticação bem-sucedida
}
```

O `$remember` é uma variável booleana que indica se o usuário optou por "Lembrar-me". Se o usuário marcar a opção "Lembrar-me" em seu formulário de login, o valor de `$remember` será `true`, e o Laravel configurará automaticamente o cookie "Remember Me".

**Passo 4: Teste o "Remember Me"**

Agora, quando o usuário fizer login e marcar a opção "Lembrar-me", o Laravel criará um cookie de autenticação que manterá o usuário autenticado por um período prolongado. O usuário não precisará fazer login toda vez que acessar o aplicativo, a menos que o cookie expire ou seja manualmente deslogado.

Este é um recurso conveniente para melhorar a experiência do usuário em aplicativos que não requerem autenticação de alto nível de segurança, como aplicativos de uso pessoal. Certifique-se de que sua aplicação esteja configurada de acordo com as práticas de segurança recomendadas.