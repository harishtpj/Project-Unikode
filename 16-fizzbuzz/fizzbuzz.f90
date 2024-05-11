! Fortran program to print fizzbuzz
! Written by M.V.Harish Kumar on 11-05-2024
program fizzbuzz
  implicit none
  integer :: n, i

  print '(a$)', "Enter no. of terms: "
  read(*,*) n

  do i = 1, n
     if (mod(i,15)==0) then
        print '(a)', "FizzBuzz"
     else if (mod(i,3)==0) then
        print '(a)', "Fizz"
     else if (mod(i,5)==0) then
        print '(a)', "Buzz"
     else
        print '(i0)', i
     end if
   
  end do
end program fizzbuzz
