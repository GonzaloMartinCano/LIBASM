segment		.text
global 		_ft_strcmp

_ft_strcmp:
	    mov al, BYTE [rdi]		; metemos en al el primer byte de rdi
	    mov bl, BYTE [rsi]		; lo mismo con rsi
	    cmp al, 0				; comparamos si ese byte es \0 
	    je final				; caso afirmativo terminamos de comparar
	    cmp bl, 0				; lo mismo con bl
	    je final
	    cmp al, bl				; comparamos al y bl para ver si son iguales
	    jne final				; si no es asi terminamos de comparar
	    inc rdi					; si siguen siendo incrementamos la posicion de rdi
	    inc rsi					; hacemos lo mismo con rsi
	    jmp _ft_strcmp			; volemos a hacer la comparativa, modo bucle

final:
	    movzx rax, al			; movemos al a nuestro contador
	    movzx rbx, bl			; movemos bl al contador secundario
	    sub rax, rbx			; restamos contadores para obetener la diferencia
	    ret
