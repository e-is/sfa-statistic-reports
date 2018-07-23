
###### ------- SCRIPT R POUR PRODUIRE LES ESTIMATIONS D'EFFORT ET DE CAPTURES 2015/2016 

### --- Chargement des packages n�cessaires au lancement du script

library(doBy)
library(RColorBrewer)
library(xlsx)

### --- Effacer les objets stock�s dans la m�moire R

rm(list=ls())

### --- Choix de l'ann�e pour les estimations (2015 ou 2016)

annee=2017

### --- S�lection du r�pertoire courant o� se situent les donn�es et r�f�rentiels, et o� seront stock�s les r�sultats

#R�pertoire courant A MODIFIER
folder="D:/SFA Data/Artisanal Data/SIH SYC 2016/Lancement estimations R"
setwd(folder) 

#Cr�ation du r�pertoire contenant les r�sultats 
name_folder=paste(folder,"/Estimations/",annee,sep="") 
dir.create(name_folder,showWarnings=FALSE,recursive=T)

### --- Lancement des estimations

source("Codes R/preparation_donnees.r")
source("Codes R/affectation_metier_marees_OBSDEB.r")
source("Codes R/calendrier_activite_par_navire.r")
source("Codes R/estimation_effort_captures.r")
source("Codes R/sauvegarde_resultats.r")



