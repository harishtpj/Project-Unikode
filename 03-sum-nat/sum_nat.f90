! Fortran program to sum numbers from 1 to n
! Written by M.V.Harish Kumar on 09-05-2024
program sum_nat
    implicit none
    integer :: n, ans

    print '(a$)', "Enter value for `n`: "
    read(*,*) n
    ans = sum_to_n(n)
    print '(a,i0,a,i0)', "The sum from 1 to ", n, " is ", ans

contains
    function sum_to_n(n) result(sum)
        implicit none
        integer, intent(in) :: n
        integer :: i, sum

        sum = 0
        do i = 1, n
            sum = sum + i
        end do
    end function sum_to_n
end program sum_nat