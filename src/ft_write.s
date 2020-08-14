		global _ft_write
		section .text
		extern ___error
_ft_write:
		mov rax, 0x2000004
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
