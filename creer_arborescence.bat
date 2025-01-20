@echo off
set "basePath=%~dp0"  :: Définit le chemin de base comme le répertoire actuel
set "year=2025"
set "months=01 JANVIER 02 FÉVRIER 03 MARS 04 AVRIL 05 MAI 06 JUIN 07 JUILLET 08 AOÛT 09 SEPTEMBRE 10 OCTOBRE 11 NOVEMBRE 12 DÉCEMBRE"

:: Créer le dossier principal
mkdir "%basePath%%year%\MCO"

:: Boucle pour créer les dossiers des mois et sous-dossiers
for %%M in (%months%) do (
    mkdir "%basePath%%year%\MCO\%%M %year%\druides\SEJOURS"
)

echo Arborescence créée avec succès dans le chemin suivant :
echo %basePath%
pause
