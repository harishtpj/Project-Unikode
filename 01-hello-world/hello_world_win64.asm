; A Simple program to print greeting message on the STDOUT
; Created by M.V.Harish Kumar on 22-07-2023

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

		.data
msg		byte	"Hello, world!", 10, 0

		.code
		externdef printf:proc

main	proc

		sub rsp, 56

		lea rcx, msg
		call printf

		add rsp, 56

		xor rax, rax
		ret
main	endp

		end