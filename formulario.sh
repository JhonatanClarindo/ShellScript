#!/usr/bin/env bash

dados=$(zenity --forms --title='Criação de novo usuário' \
               --text='Olá, preencha com seus dados' \
               --add-entry='Nome' \
               --add-entry='Sobrenome' \
               --add-password='Senha' \
               --ok-label='Enviar' \
               --separator=',' \
               --add-entry='Email')   

nome_sobrenome=$(cut -d ',' -f 1,2 <<< "$dados" | sed 's/,//g')
senha=$(cut -d ',' -f 3 <<< "$dados")
email=$(cut -d ',' -f 4 <<< "$dados")

if [[ -z "$senha" ]]; then
	zenity --error --text="O Campo senha é obrigatório"
	exit 1
fi


zenity --info --title='Dados para cadastro' --ok-label='Confirma?' --text="O seu nome de usuário será: $nome_sobrenome\ne sua senha: $senha"
zenity --info --title='Cadastro concluido' --text="Instruções serão enviadas para o email $email. Siga-as corretamente!\n     Bem vindo!"
