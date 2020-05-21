			section		.text
			global		_ft_strlen

_ft_strlen:
			mov rax, 0x0 					; ponemos rax a 0, sera nuestro contador
			_start_loop:
				cmp byte [rdi + rax], 0x0 	; comparamos la posicion del string con \0
				jz _end_loop 				; si es asi terminamos
				inc rax						; si no incrementamos el contador
				jmp _start_loop				; volvemos a hacer la comparativa
			_end_loop:
			ret
	
