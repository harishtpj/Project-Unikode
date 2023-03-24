# x86_64 Program to print "Hello, world!" in stdout

        .global main

        .text
main:                                   
        mov     $message, %rdi          
        call    puts                    
        ret                             
message:
        .asciz "Hello, world!"
