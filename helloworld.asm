global _start ; déclaration de _start en global

mov eax,1	; signalement fin de programme
mov ebx,0 	; code de sortie du programme
int 0x80	; interruption Linux : le programme rend la main au système