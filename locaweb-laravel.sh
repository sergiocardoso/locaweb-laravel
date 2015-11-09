#!/bin/bash
PHP_VERSAO=$1
echo ""
echo "---------------------------------------------------------------"
echo "------ LARAVEL 5 INSTALLER for LOCAWEB SHARED HOSTS -----------"
echo "------ por Sergio Cardoso <contato@sergiocardoso.org> ---------"
echo "---------------------------------------------------------------"
echo "------ requisitos: PHP > 5.3 && COMPOSER ---------------------- "
echo "---------------------------------------------------------------"

if [ -z "$PHP_VERSAO" ];
then
        echo "---->ERROR: [ Insira a versão do seu binario do PHP como parametro ]";
else
        echo "-----> PASSO 1 [ INSTALANDO LARAVEL GLOBALMENTE ]"
        $PHP_VERSAO -c ~/php.ini ~/bin/composer.phar global require "laravel/installer=~1.1"
        echo 'export PATH="~/.composer/vendor/bin/:$PATH"' >> ~/.bash_profile
        echo 'alias laravel='\"$PHP_VERSAO' ~/.composer/vendor/bin/laravel"' >> ~/.bash_profile
        echo "-----------------------------------------------------------------"
        echo "-------- | REINICIE O TERMINAL | --------------------------------";
        echo "-----------------------------------------------------------------";

fi
