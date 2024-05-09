! Fortran program to check if a number is prime or not
! Created by M.V.Harish Kumar on 09-05-2024
! Uses the O(sqrt(n)) algorithm
program prime_check
    implicit none
    integer :: num

    print '(a/)', "Prime number checker"
    print '(a$)', "Enter the number to check for prime: "
    read(*,*) num
    if (is_prime(num)) then
        print '(i0,a)', num, " is Prime"
    else
        print '(i0,a)', num, " is NOT Prime"
    end if

contains
    function is_prime(n) result(isPrime)
        integer, intent(in) :: n
        integer :: i
        logical :: isPrime
    
        if (n == 2) then
            isPrime = .true.
            return
        end if

        do i = 2, int(sqrt(real(n)))
            if (mod(n, i) == 0) then
                isPrime = .false.
                return
            end if
        end do

        isprime = n > 1
        return
    end function is_prime
end program prime_check