global _start ; déclaration de _start en global
	;

segment .data ; création de variables initialisées
segment .bss ; création de variables non-initialisées
segment .text ; création de fonctions entre segment et pt d'entré

_start:
	; instructions
	; ...
	; fermer proprement le programme nasm
	mov eax,1	; signalement fin de programme
	mov ebx,0 	; code de sortie du programme
	int 0x80	; interruption Linux : le programme rend la main au système