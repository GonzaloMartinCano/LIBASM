		global		_ft_read
		section		.text
		extern		___error

_ft_read:
		mov		rax, 0x2000003
		syscall
		jc error
		ret
error:
		push rax
		call ___error
		mov rdi, rax
		pop rax
		mov [rdi], rax
		mov rax, -1
		ret
