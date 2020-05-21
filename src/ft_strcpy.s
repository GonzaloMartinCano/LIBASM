			section		.text
			global		_ft_strcpy
	
_ft_strcpy:
			mov		rcx, 0x0			; ponemos rcx a 0
			cmp		rsi, 0					; comprobamos que src no sea \0
			jz		isnull					; en caso que si copiamos el Null, tambien podriamos mandarlo a return y causar el mismo seg. fault. que el original
			jmp		copy					; nos vamos a la funcion copiar

increment:
			inc		rcx						; funciona auxiliar para usarla de incremento

copy:
			mov		dl, BYTE [rsi + rcx]	; empezamos a copiar cada byte de src en dl
			mov		BYTE [rdi + rcx], dl	; pasamos byte a byte de dl a rdi que sera nuestro dst
			cmp		dl, 0					; comprobamos si dl ha llegado a nulo
			jnz		increment				; en caso negativo incrementamos para seguir

isnull:
			mov		rax, rsi
			ret
return:	
			mov		rax, rdi				; pasamos dst(rdi) a rax para retornarlo
			ret		
