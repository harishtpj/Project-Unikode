; Program to get user's name as input and print it with a greeting
; Created by M.V.Harish Kumar on 22-07-2023

includelib	msvcrt.lib
includelib	legacy_stdio_definitions.lib

		.data
prompt	byte	"Please enter your name: ", 0
inpStr	byte	"%[^", 0Ah, "]s"	;"%[^\n]s" 
msg		byte	"Hello %s! Hope you're fine", 10, 0

		.data?
uname	byte	64 dup (?)

		.code
		externdef	printf:proc
		externdef	scanf:proc

main	proc
		
		sub rsp, 56

		lea rcx, prompt
		call printf

		lea rcx, inpStr
		lea rdx, uname
		call scanf

		lea rcx, msg
		lea rdx, uname
		call printf

		add rsp, 56
		xor rax, rax
		ret

main	endp

		end