segment .data ; création de variables initialisées
	hello: db 'Hello world!',10	; 10=\n en ascii
	hello_len: equ $-hello	; longueur de ma variable
	

segment .bss ; création de variables non-initialisées

segment .text ; création de fonctions entre segment et pt d'entré
	global _start ; déclaration de _start en global

_start:
	; instructions pour un HelloWorld
	
	mov eax,4            ; 'écrire' system call = 4
	mov ebx,1            ; file descriptor 1 = STDOUT
	mov ecx,hello        ; variable
	mov edx,hello_len    ; longueur de la variable à écrire
	int 80h              ; appel kernel

	; fermer proprement le programme nasm
	mov eax,1	; signalement fin de programme
	mov ebx,0 	; code de sortie du programme
	int 0x80	; interruption Linux : le programme rend la main au système