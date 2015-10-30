#!/bin/bash

#BACKUP CRIADO POR: Matheus Fidelis 
#Github - https://github.com/msfidelis/
#Twitter - @fidelisauro 
#Blog - http://www.nanoshots.com.br


#SCRIPT DE BACKUP DIFERENCIAL REALIZADO NO FILESERVER

#VARIAVEIS
INICIO=`date +%d/%m/%Y-%H:%M:%S`
LOG=/var/log/backups/full/`date +%Y-%m-%d`_log-backup-rsync.txt

#DEFINA AQUI O DIRETÓRIO QUE SERÁ EFETUADO O BACKUP
ORIGEM=/mnt/dados/

#DEFINA AQUI O DIRETÓRIO ONDE O ARQUIVO SERÁ GRAVADO JUNTO COM O SEU NOME
DESTINO=/mnt/hdexterno/

#CRIA O ARQUIVO DE LOGS
echo " " >> $LOG
echo " " >> $LOG
echo "|-----------------------------------------------" >> $LOG
echo " Sincronização iniciada em $INICIO" >> $LOG


#CRIA O BACKUP
rsync -Cravzp $ORIGEM $DESTINO >> $LOG


FINAL=`date +%d/%m/%Y-%H:%M:%S`

echo " Sincronização Finalizada em $FINAL" >> $LOG
echo "|-----------------------------------------------" >> $LOG
echo " " >> $LOG
echo " " >> $LOG


#FIM DO SCRIPTS
