#! /usr/bin/env bash

#cript
read -p "Digite sua frase: " entrada; entrada="${entrada,,}" 
echo "$entrada" | tr '[a-z]' '[x-za-w]'

#descript
read -p "Digite sua frase para DESCRIPTOGRAFAR: " entrada
echo "$entrada" | tr '[x-za-w]' '[a-z]'
