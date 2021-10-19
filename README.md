# natsembly

## Prérequis

Ce projet nécessite le compilateur nasm ainsi que l'éditeur de lien ld.

## Utilisation

### Compiler sous Linux
`nasm -f <format> file.asm [-g]`
	-f pour spécifier le format du fichier compilé.
	-g pour afficher les symboles de debug.
`ld [-m elf_i386] file.o -o executable`
	- m elf_i386 pour un fichier compilé au format elf (32 bits par défaut) sur un système 64 bits.

### Compiler sous Windows
Il faut se référer à [la documentation](https://studylibfr.com/doc/2886726/cours-d-assembleur-nasm).

## Notes
Informations tirées du [cours d'assembleur NASM de l'université de Limoges](https://studylibfr.com/doc/2886726/cours-d-assembleur-nasm).