! Fortran program to print fibonacci terms from 1 to n
! Written by M.V.Harish Kumar on 11-05-2024
program fibo
  implicit none
  integer :: i,n

  print '(a/)', "Fibonacci series printer"
  print '(a$)', "Enter the no of terms: "
  read(*,*) n

  print '(a,i0,a)', "The first ", n, " terms of fibonacci series are:"
  do i = 0,n-1
     print '(i0)', fib(i)
  end do

contains
  recursive function fib(n) result(ret)
    implicit none
    integer, intent(in) :: n
    integer :: ret

    if ((n == 0) .or. (n == 1)) then
       ret = n
    else
       ret = fib(n-1) + fib(n-2)
    end if
  end function fib
end program fibo
