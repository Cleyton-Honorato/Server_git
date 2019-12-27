# !/bin/sh

reset

echo "------- Antes de iniciar ... -------"
echo "Esse arquivo é para iniciar de forma correta"
echo "um projeto utilizando o GIT, verifique se no servidor você"
echo "já rodou o .sh de config do serve"
echo "precisamos dele para que de tudo certo"
echo ""

sleep 7

echo "------------------------------------------------------------------"
echo "|     Criaremos uma para do repósitorio que ira ficar na raiz     |"
echo "------------------------------------------------------------------"

echo "----------------------------------"
echo "|     Digite o nome da pasta     |"
echo "----------------------------------"

read raiz
mkdir $raiz

echo "----------------------------------"
echo "|        Iniciando o git          |"
echo "----------------------------------"

cd $raiz
git init
git add .
git commit -m "Subindo projeto"

echo "-------------------------------------------------"
echo "|        Agora iremos mandar o projeto          |"
echo "|        para a pasta raiz do servidor          |"
echo "-------------------------------------------------"

echo '================================================='

echo "----------------------------------"
echo "|  Digite o usuario, ex: root     |"
echo "----------------------------------"

read user

echo "----------------------------------"
echo "|   Digite o ip do servidor      |"
echo "----------------------------------"

read ip

echo "--------------------------------------------------"
echo "|   Digite o nome da pasta .git do servidor      |"
echo "--------------------------------------------------"

read repo

cd /home/kassio/Estudos/teste_git/$raiz

touch texto.txt

echo "Arquivo de teste" >> "/home/kassio/Estudos/teste_git/$raiz/texto.txt"

git add .

git commit -m "subindo projeto"

git remote add origin ssh://$user@$ip:/var/www/html/$repo.git

git push origin +master:refs/heads/master

echo "----------------------------------------------------------------"
echo "|    Finalizado agora basta criar qualquer arquivo e testar     |"
echo "----------------------------------------------------------------"
