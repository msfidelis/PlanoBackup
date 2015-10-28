#!/bin/bash

#INSTALL CRIADO POR: Matheus Fidelis 
#Github - https://github.com/msfidelis/
#Twitter - @fidelisauro 
#Blog - http://www.nanoshots.com.br


CRON=/var/spool/cron/crontabs/root

#SETUP DAS PASTAS

echo "REALIZANDO O SETUP DAS PASTAS - OK"
echo "CRIANDO ARQUITETURA DE DIRETÓRIOS OK"

mkdir /var/scripts
mkdir -p /var/log/backups/full/
mkdir -p /var/log/backups/rsync


echo "COPIANDO OS ARQUIVOS - OK"

cp backup-full.sh /var/scripts/
cp backup-rsync.sh /var/scripts/


echo "GERENCIANDO AS PERMISSÕES - OK"

chmod +x /var/scripts/ -R


#CRIA OS CRONTABS - Testado em Servidores Debian 7/8. Recomendo fazer manualmente em distribuições como Slackware 14.1 ou inferiores

echo "CRIANDO AS CRONTABS DEFAULT EM /var/spool/cron/crontabs/root - OK"

echo "" >> $CRON
echo "" >> $CRON
echo "#APAGA O BACKUP DA SEMANA ANTERIOR - Default: Toda Sexta às 15h30" >> $CRON
echo "30 15 * * 5 rm -r /mnt/hdexterno/backup*" >> $CRON

echo "" >> $CRON
echo "" >> $CRON
echo "#REALIZA O BACKUP FULL COMPACTADO - Default: Toda Sexta às 17H00" >> $CRON
echo "00 17 * * 5 /var/scripts/backup-full.sh" >>  $CRON

echo "" >> $CRON
echo "" >> $CRON
echo "#REALIZA O BACKUP DIÁRIO VIA RSYNC - Default: Todos os dias às 23h00" >> $CRON
echo "00 23 * * 1-5 /var/scripts/backup-rsync.sh" >> $CRON
