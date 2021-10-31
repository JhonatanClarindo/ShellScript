!# /bin/bash

echo "Este é um pequeno gerador de senhas seguras"
echo "Escolha a quantidade de caracteres da sua senha"
read PASS_LENGTH

for p in $(seq 1 5);
do 
	openssl rand -hex 48 | cut -c1-$PASS_LENGTH
done
