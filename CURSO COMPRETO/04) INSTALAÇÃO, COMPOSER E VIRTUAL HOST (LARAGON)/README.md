# INSTALAÇÃO, COMPOSER E VIRTUAL HOST (LARAGON)
Para instalar o Laragon, configurar o Composer e criar um Virtual Host, siga os passos abaixo:

## Instalação do Laragon:
1. Faça o download da versão mais recente do Laragon no [site oficial](https://laragon.org/).

2. Execute o instalador e siga as instruções para concluir a instalação. Durante o processo de instalação, você pode escolher os componentes que deseja instalar, como o Apache, PHP, MySQL e outras ferramentas relacionadas.

3. Após a instalação, inicie o Laragon.

## Configuração do Composer:
1. O Laragon inclui o Composer por padrão. Para verificar se o Composer está configurado corretamente, abra a linha de comando integrada no Laragon. Para fazer isso, clique com o botão direito no ícone do Laragon na barra de tarefas e escolha "Terminal" > "Cmder".

2. No terminal, digite o seguinte comando para verificar a versão do Composer:

   ```bash
   composer --version
   ```

   Se o Composer estiver instalado e configurado corretamente, você verá a versão do Composer sendo exibida.

## Criação de um Virtual Host no Laragon:
1. No Laragon, clique com o botão direito no ícone da bandeja na barra de tarefas e vá para "Apache" > "httpd-vhosts.conf".

2. Isso abrirá o arquivo de configuração do Apache para os Virtual Hosts. Você pode adicionar um bloco de configuração para o seu projeto no final do arquivo. Por exemplo:

   ```apache
   <VirtualHost *:80>
       DocumentRoot "C:/laragon/www/seuprojeto/public"
       ServerName seuprojeto.test
   </VirtualHost>
   ```

   Certifique-se de substituir "seuprojeto" pelo nome do seu projeto e ajustar o caminho para o diretório raiz do seu projeto.

3. Salve o arquivo de configuração e feche-o.

4. No Laragon, clique com o botão direito no ícone da bandeja novamente e vá para "Apache" > "Reload".

5. Agora, seu Virtual Host está configurado. Você pode acessar o seu projeto no navegador usando o nome de domínio especificado (no exemplo acima, "seuprojeto.test").

Lembrando que é importante que seu projeto esteja localizado na pasta correta. No exemplo acima, o diretório raiz do projeto deve estar em "C:/laragon/www/seuprojeto".

Com essas etapas, você deve ter o Laragon instalado, o Composer configurado e um Virtual Host configurado para o seu projeto Laravel. Agora você pode começar a desenvolver seus aplicativos PHP com facilidade.