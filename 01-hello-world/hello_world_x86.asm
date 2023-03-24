; x86 nasm Program to print "Hello, world!" in stdout
          global    main
          extern    puts

          section   .text
main:                                       
          mov       rdi, message            
          call      puts                    
          ret                               
message:
          db        "Hello, world!", 0