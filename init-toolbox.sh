#!/bin/bash

#Vérifie l'existence dossier .sh-toolbox
if [ -d ".sh-toolbox" ]; then
	echo "Le dossier .sh-toolbox existe"
else
	mkdir ".sh-toolbox"
	if [ $? -ne 0 ]; then
		echo "Erreur : création du dossier impossible"
		exit 1

	fi
fi

#Vérifie l'existence fichier archives
if [ -f ".sh-toolbox/archives" ]; then
	echo "Le fichier archives existe dans .sh-toolbox"
else
	touch ".sh-toolbox/archives"
	if [ $? -ne 0 ]; then
		echo "Erreur, le fichier archives n'a pas pu être créé"
		exit 1
	else
		echo "Création du fichier archives dans .sh-toolbox"
		echo 0 > ".sh-toolbox/archives"
	fi
fi

#Vérifie que le dossier .sh-toolbox ne contient aucun autre fichier ou dossier hormis le fichier archives

if [ $(ls -A .sh-toolbox | grep -v '^archives$' | wc -l ) -ne 0 ];then
	echo "un autre fichier ou dossier que le fichier archives existe dans .sh-toolbox"
	exit 2
fi

exit 0
