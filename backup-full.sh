#!/bin/bash

#SCRIPT DE BACKUP FULL REALIZADO DO FILESERVER

#VARIAVEIS
INICIO=`date +%d/%m/%Y-%H:%M:%S`
LOG=/var/log/backups/full/`date +%Y-%m-%d`_log-backup-full.txt

#CRIA O ARQUIVO DE LOGS
    echo " " >> $LOG
echo " " >> $LOG
echo "|-----------------------------------------------" >> $LOG
echo " Sincronização iniciada em $INICIO" >> $LOG


#CRIA O BACKUP
tar cvf /mnt/hdexterno/backup-`date +%Y-%m-%d`.tar.gz /mnt/dados/ >> $LOG 

FINAL=`date +%d/%m/%Y-%H:%M:%S`

echo " Backup finalizado em $FINAL" >> $LOG
echo "|-----------------------------------------------" >> $LOG
echo " " >> $LOG
echo " " >> $LOG


#FIM DO SCRIPTS
