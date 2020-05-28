
		section	.text
		global	_ft_write

_ft_write:
	    cmp rsi, 0x0			;	comprobamos nulo
	    jz _is_null				;	si es asi lo tratamos
		mov rax, 0x2000004		; 	movemos el contenido de nuestro s1 a rax
		syscall					; 	lo llamamos para imprimirlo
		cmp rax, 9				; 	si nos da error el syscall, con errno rax se pone a 9..				
	    jz _is_null				; 	por eso lo comprobamos y lo tratamos como fallo en ese caso
		ret

_is_null:
	    mov rax, -1				; 	en caso de cualquier fallo devolvemos -1
	    ret
