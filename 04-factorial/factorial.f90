! Fortran program to compute factorial
! Written by M.V.Harish Kumar on 09-05-2024
program factorial
    implicit none
    integer :: n, ans

    print '(a$)', "Enter value for `n`: "
    read(*,*) n
    ans = fact(n)
    print '(i0,a,i0)', n, '! = ', ans

contains
    recursive function fact(n) result(f)
        integer, intent(in) :: n
        integer :: f
    
        if (n <= 1) then
            f = 1
        else
            f = n * fact(n-1)
        end if
    end function fact
end program factorial