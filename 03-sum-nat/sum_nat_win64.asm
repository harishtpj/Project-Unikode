; Simple assembly program to print sum of n integers
; Created by M.V.Harish Kumar on 22-07-2023

includelib	msvcrt.lib
includelib	legacy_stdio_definitions.lib

		.data
prompt	byte	"Enter value for 'n': ", 0
result	byte	"Sum of 1 to %d is %I64d", 10, 0

errNeg	byte	"Values < 1 for 'n' aren't supported!", 10, 0

numInp	byte	"%I64d", 0

		.data?
n		qword	?

		.code
		externdef printf:proc
		externdef scanf:proc

main	proc
		sub rsp, 56

		lea rcx, prompt
		call printf

		lea rcx, numInp
		lea rdx, n
		call scanf

		mov rdx, n
		cmp rdx, 0
		jle negN

		mov r8, n
		inc n
		imul r8, n
		shr r8, 1

		lea rcx, result
		; rdx is already loaded with n, see line 32
		; As a result, need not to decrement variable n
		call printf		; r8 is already loaded with result

		xor rax, rax
		jmp endIt

negN:	lea rcx, errNeg
		call printf
		mov rax, 1

endIt:	add rsp, 56
		ret
main	endp
		
		end