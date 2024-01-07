; Assembly program to print the nth fibnocci number
; Written by M.V.Harish Kumar on 23-07-2023

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

			.data
prompt		byte	"Enter the value for n(fibnocci no): ", 0
result		byte	"%d fibnocci number is %I64d", 10, 0

numInput	byte	"%d", 0

			.data?
nfib		byte	?

			.code
			externdef printf:proc
			externdef scanf:proc

main		proc
			sub rsp, 56

			lea rcx, prompt
			call printf

			lea rcx, numInput
			lea rdx, nfib
			call scanf

			xor rax, rax
			movzx rcx, nfib
			call fib

			lea rcx, result
			movzx rdx, nfib
			mov r8, rax
			call printf

			xor rax, rax

done:		add rsp, 56
			ret
main		endp

fib			proc
			cmp cl, 0
			je fib0

			cmp cl, 1
			je fib1

			dec cl		; cl - 1
			call fib
			mov r8, rax

			dec cl		; cl - 2
			call fib

			add rax, r8
			ret

fib0:		mov rax, 0
			ret

fib1:		mov rax, 1
			ret
fib			endp

			end