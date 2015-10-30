#!/bin/bash

#BACKUP CRIADO POR: Matheus Fidelis 
#Github - https://github.com/msfidelis/
#Twitter - @fidelisauro 
#Blog - http://www.nanoshots.com.br


#SCRIPT DE BACKUP FULL REALIZADO DO FILESERVER

#VARIAVEIS
INICIO=`date +%d/%m/%Y-%H:%M:%S`
LOG=/var/log/backups/full/`date +%Y-%m-%d`_log-backup-full.txt

#DEFINA AQUI O DIRETÓRIO QUE SERÁ EFETUADO O BACKUP
ORIGEM=/mnt/dados/

#DEFINA AQUI O DIRETÓRIO ONDE O ARQUIVO SERÁ GRAVADO JUNTO COM O SEU NOME
DESTINO=/mnt/hdexterno/backup-`date +%Y-%m-%d`.tar.gz

#CRIA O ARQUIVO DE LOGS
echo " " >> $LOG
echo " " >> $LOG
echo "|-----------------------------------------------" >> $LOG
echo " Backup iniciado em $INICIO" >> $LOG


#CRIA O BACKUP
tar cvf $DESTINO $ORIGEM >> $LOG 

FINAL=`date +%d/%m/%Y-%H:%M:%S`

echo " Backup finalizado em $FINAL" >> $LOG
echo "|-----------------------------------------------" >> $LOG
echo " " >> $LOG
echo " " >> $LOG


#FIM DO SCRIPTS
