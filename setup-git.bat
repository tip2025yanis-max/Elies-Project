@echo off
REM Script d'initialisation du repository Git pour Élies Project

REM Initialiser le repository
echo Initialisation du repository Git...
git init

REM Configurer Git (remplacez par vos informations)
echo Configuration de Git...
git config user.name "Your Name"
git config user.email "your.email@example.com"

REM Ajouter tous les fichiers
echo Ajout de tous les fichiers...
git add .

REM Commit initial
echo Création du commit initial...
git commit -m "Initial commit: Élies Project - Site de bateaux de prestige"

echo.
echo ===================================
echo Prochaines étapes :
echo ===================================
echo.
echo 1. Allez sur https://github.com/new
echo 2. Créez un nouveau repository nommé 'Elies-Project'
echo 3. Ne cochez PAS "Initialize this repository"
echo 4. Cliquez sur "Create repository"
echo.
echo 5. Puis exécutez les commandes suivantes dans ce dossier :
echo.
echo    git remote add origin https://github.com/VOTRE_USERNAME/Elies-Project.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo ===================================
pause
