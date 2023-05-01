# iac_users-dir-perm

Cria e remove usuários, grupos e diretórios em lote, conforme configuração. 

Criado como resolução de desafio para o curso de Linux da DIO

### config.sh

Armazena as listas de grupos e diretórios e de usuários, além de verificar se o usuário é o root ou um sudoer

### setup_users.sh

Adiciona os grupos, usuários, diretórios e altera permissões para que cada grupo tenha permissão total em seu diretório correspondente e nenhum privilégio nos diretórios de outros grupos

### remove_users.sh

Remove todos os grupos, diretórios e usuários criados pelo script anterior, ignorando erros caso um dos itens já tenha sido removido
