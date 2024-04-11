# RELATÓRIO DE ERROS:
1. **Erro de versão do PHP:**
   - Problema: O Composer exigiu uma versão mais recente do PHP do que a que eu tinha instalada (5.4.45).
   - Detalhes adicionais: Além disso, descobri que o PHP não estava configurado no PATH do sistema, o que causou dificuldades na execução de comandos PHP em qualquer diretório.
   - Solução: Para resolver esse problema, atualizei minha versão do PHP para a versão 8.2.4, que atendeu aos requisitos mínimos do Composer. Além disso, configurei o PHP no PATH do sistema para facilitar a execução de comandos PHP em qualquer diretório. Isso foi feito adicionando o diretório do PHP ao PATH do sistema nas configurações do Windows.

2. **Aviso do antivírus ao instalar o OpenSSL:**
   - Problema: Ao tentar instalar o OpenSSL, meu antivírus (Microsoft Defender SmartScreen) disparou um aviso, alertando que um aplicativo não reconhecido estava sendo iniciado e sugerindo que a execução poderia colocar meu computador em risco.
   - Solução: Para prosseguir com a instalação do OpenSSL, decidi ignorar o aviso do antivírus, confiando na fonte da qual o arquivo foi [baixado] (https://slproweb.com/products/Win32OpenSSL.html), que foi verificada usando o serviço VirusTotal. 

3. **Aviso sobre extensão OpenSSL duplicada ao instalar o Composer:**
   - Problema: Ao tentar instalar o Composer após o download, recebi um aviso indicando que a linha `extension=openssl` no arquivo `php.ini` estava duplicada, o que poderia causar conflitos ou erros.
   - Solução: Para resolver isso, adicionei um ponto e vírgula (`;`) no início da linha `extension=openssl` no arquivo `php.ini` para comentá-la. Comentar a linha desativa sua funcionalidade sem removê-la completamente do arquivo de configuração. Isso resolveu o problema de duplicação e evitou possíveis conflitos. Após fazer essa alteração, reiniciei o servidor Apache no XAMPP para que as alterações no arquivo `php.ini` fossem aplicadas.

4. **Falha ao baixar o Laravel com o Composer:**
   - Problema: Ao tentar criar um novo projeto Laravel com o Composer, eu enfrentei uma falha devido à ausência da extensão zip e dos comandos unzip/7z do sistema.
   - Solução: Eu instalei a extensão zip para o PHP e verifiquei a disponibilidade dos comandos unzip/7z. Além disso, corrigir a configuração no arquivo `php.ini` descomentando a linha `extension=openssl`.