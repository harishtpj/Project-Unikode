; Assembly program to compute factorial of natural numbers
; Written by M.V.Harish Kumar on 23-07-2023

includelib	msvcrt.lib
includelib	legacy_stdio_definitions.lib

			.data
prompt		byte	"Enter number for factorial op: ", 0
result		byte	"%d! = %I64d", 10, 0

errNegF		byte	"Negative factorial aren't supported!", 10, 0
errLarF		byte	"Too large factorial to compute!", 10, 0

numInput	byte	"%d", 0

			.data?
num			byte	?

			.code
			externdef printf:proc
			externdef scanf:proc

main		proc
			sub rsp, 56

			lea rcx, prompt
			call printf

			lea rcx, numInput
			lea rdx, num
			call scanf

			movzx rcx, num
			cmp cl, 0
			jl negInp
			cmp cl, 20
			jg largeFact

			mov rax, 1
			call fact

			lea rcx, result
			movzx rdx, num
			mov r8, rax
			call printf

			xor rax, rax
			jmp done

largeFact:	lea rcx, errLarF
			call printf

			mov rax, 2
			jmp done

negInp:		lea rcx, errNegF
			call printf

			mov rax, 1

done:		add rsp, 56
			ret
main		endp

fact		proc
			cmp cl, 0
			je fact0
			dec cl
			call fact
			inc cl
			imul rax, rcx
			ret

fact0:		mov rax, 1
			ret
fact		endp
			
			end