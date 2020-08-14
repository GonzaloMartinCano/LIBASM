		section		.text
		global 		_ft_strcmp

_ft_strcmp:
		cmp rsi, 0x0			;	comprobamos nulo
		jz _rsi_null				;	si es asi lo tratamos
		cmp rdi, 0x0			;	comprobamos nulo
		jz _rdi_null				;	si es asi lo tratamos
		mov al, BYTE [rdi]		; metemos en al(registro de 8bits=1byte) el primer byte de rdi
		mov bl, BYTE [rsi]		; lo mismo con rsi
		cmp al, 0				; comparamos si ese byte es \0 
		je  final				; caso afirmativo terminamos de comparar
		cmp bl, 0				; lo mismo con bl
		je final				; terminamos en caso afirmativo
		cmp al, bl				; comparamos al y bl para ver si son iguales
		jne final				; si no es asi terminamos de comparar
		jl	lower				; si es menor lo mandamos 
		jg	greater				; si es mayor lo mandamos
		inc rdi					; si siguen siendo iguales incrementamos la posicion de rdi
		inc rsi					; hacemos lo mismo con rsi
		jmp _ft_strcmp			; volvemos a hacer la comparativa, modo bucle

lower:
		mov	rax, -1				; si ha sido menor devolvemos -1
		ret	

greater:
		mov rax, 1				; si ha sido mayor devolvemos 1
		ret
equal:
		mov rax, 0				; si son iguales retornar 0
		ret
final:
		cmp al, bl				; la ultima comparativa la hacemos...
		je	equal				; en todos los casos para asegurar...
		jl	lower				; el caso de que venga con null...
		jg	greater				; y determinamos cual es mayor menor igual

_rdi_null:
	    mov rax, -2					; en caso de rdi null devolvemos -3
	    ret

_rsi_null:
	    mov rax, -3				; 	en caso de rsi null devolvemos -3
	    ret		