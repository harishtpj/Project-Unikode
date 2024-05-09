! Fortran program to print Multiplication tables
! Written by M.V.Harish Kumar on 09-05-2024
program mult_table
    implicit none
    integer :: n, t
    
    print '(a$)', "Enter the no. to generate tables: "
    read(*,*) n
    print '(a$)', "Enter the no. till which to generate: "
    read(*,*) t
    call gen_tables(n, t)

contains
    subroutine gen_tables(number, times)
        implicit none
        integer, intent(in) :: number, times
        integer :: i

        print '(i0,a)', number, ' Tables'
        do i = 1, times
            print '(i0,a,i0,a,i0)', number, ' x ', i, ' = ', number*i
        end do
    end subroutine gen_tables
end program mult_table