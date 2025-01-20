@echo off
setlocal enabledelayedexpansion

:: Définir le chemin de base
set "basePath=%~dp0"  :: Définit le répertoire actuel
set "year=2025"

:: Liste des mois sans accents
set "months=01_JANVIER 02_FEVRIER 03_MARS 04_AVRIL 05_MAI 06_JUIN 07_JUILLET 08_AOUT 09_SEPTEMBRE 10_OCTOBRE 11_NOVEMBRE 12_DECEMBRE"

:: Créer le dossier principal pour l'année et MCO
mkdir "%basePath%%year%\MCO"

:: Boucle pour créer les dossiers des mois et sous-dossiers
for %%M in (%months%) do (
    :: Remplacer les underscores (_) par des espaces pour les noms des dossiers
    set "monthName=%%M"
    set "monthName=!monthName:_= !"
    
    :: Créer le dossier du mois (exemple : "01 JANVIER")
    mkdir "%basePath%%year%\MCO\!monthName!"
    
    :: Créer le sous-dossier "druides" dans le mois
    mkdir "%basePath%%year%\MCO\!monthName!\druides"
    
    :: Créer le sous-dossier "SEJOURS" dans "druides"
    mkdir "%basePath%%year%\MCO\!monthName!\druides\SEJOURS"
)

echo Arborescence créée avec succès dans :
echo %basePath%%year%\MCO
pause
