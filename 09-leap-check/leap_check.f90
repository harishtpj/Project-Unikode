! Fortran program to check if a given year is leap
! Created by M.V.Harish Kumar on 09-05-2024
program leap_check
  implicit none
  integer :: year

  print '(a/)', "Leap year checker"
  print '(a$)', "Enter the year: "
  read(*,*) year
  if (is_leap(year)) then
     print '(i0,a)', year, " is a Leap year"
  else
     print '(i0,a)', year, " is NOT a Leap year"
  end if

contains
  function is_leap(yr) result(isLeap)
    implicit none
    integer, intent(in) :: yr
    logical :: isLeap

    isLeap = (((mod(yr,4) == 0) .and. (mod(yr,100) /= 0)) .or. (mod(yr, 400) == 0))
  end function is_leap
end program leap_check
