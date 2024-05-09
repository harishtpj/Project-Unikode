! Simple greeter program in Fortran
! Written by M.V.Harish Kumar on 09-05-2024
program greeter
    implicit none
    character(25) :: name

    print '(a$)', "Please enter your name: "
    read(*, '(a)') name

    print '(aaa)', "Hello, ", trim(name), "! Hope you're fine"
    
end program greeter