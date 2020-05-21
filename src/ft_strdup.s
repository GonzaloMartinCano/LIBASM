		section		.text
		global 		_ft_strdup ; devuelve una nueva cadena, copia de la anterior.
		extern 		_malloc
		extern 		_ft_strlen
		extern 		_ft_strcpy

_ft_strdup:
		cmp 	rdi, 0x0	; comprobamos el \0
		jz		isnull		; caso afirmativo lo mandamos para tratarlo como tal
		call 	_ft_strlen 	; nos devuelve el tamaño y aloja la info en rax
		inc		rax			; aumentamos en +1 rax, para tener el tamño len+1
		push 	rdi			; guardamos en stack la info de s1
		mov 	rdi, rax	; ahora metemos el len+1 (rax) en rdi xq es parametro que cogerá el malloc
		call 	_malloc		; hacemos la reserva de memoria y nos la devuelve en rax
		cmp 	rax, 0x0	; verificamos que no sea null
		jz 		isnull		; en caso afirmativo lo tratamos
		pop 	rdi			; volvemos a cargar la info de s1 (ahora teniamos aqui la de rax)
		push 	rsi			; guardamos en stack s2
		mov 	rsi, rdi	; movemos s1 a s2 para utilizarlo en copy
		mov 	rdi, rax	; rax viene del malloc con la reserva para meter dst (dst es rdi en copy)
		call 	_ft_strcpy	; copiamos rsi(src, con el s1 en este momento) en rdi(dst que tiene la reserva exa) 
		pop		rsi			; cargamos la info de s2 y liberamos el stack
		ret

isnull:
		mov rax, 0x0
		ret
