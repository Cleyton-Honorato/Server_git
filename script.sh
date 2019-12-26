#!/bin/sh

reset

echo "------- Antes de iniciar ... -------"
echo "Esse arquivo é para ser executado no servidor GIT"
echo "tenha certeza que este arquivo está sendo executado com permissão"
echo "administrativa (sudo), caso não saiba"
echo "abaixo está o comando correto:"
echo ""
echo "sudo ./createRepoGit.sh"

# sleep 7
echo "------------------------------------------------------------------"
echo "|       Criaremos duas pastas, uma para o repósitorio raiz        |"
echo "|             e outra pasta para o repósitorio .git               |"
echo "------------------------------------------------------------------"

# Criando pastas para os repósitorios
echo "-------------------------------------------"
echo "|       Digite o nome da pasta raiz        |"
echo "-------------------------------------------"

read raiz

mkdir $raiz

echo "-------------------------------------------"
echo "|       Digite o nome da pasta .git        |"
echo "-------------------------------------------"

read repo

mkdir $repo.git

clear

echo "-------------------------------------------"
echo "|   Iniciando git no repósitorio .git      |"
echo "-------------------------------------------"

cd $repo.git
git init --bare

clear


echo ""
echo " Agora iremos configurar o deploy da aplicação, ou seja, a atualização"
echo " automatica no servidor. configuração padrão do git HOOK"
echo ""
echo "-------------------------------------------------------------------------"

echo "----------------------------------------------------------"
echo "|   Entrando na pasta hook e criando o post-receive      |"
echo "----------------------------------------------------------"

cd hooks
touch post-receive
chmod +x post-receive


echo "-------------------------------------------"
echo "|   Adicionando linha no post-receive      |"
echo "-------------------------------------------"

echo git --work-tree=/var/www/$raiz  --git-dir=/var/www/$repo.git checkout -f >> "/var/www/$repo.git/hooks/post-receive"

echo "-------------------------------------------"
echo "|   Finalizado agora vá na sua maquina     |"
echo "|       e execute o outro scritp           |"
echo "-------------------------------------------"
