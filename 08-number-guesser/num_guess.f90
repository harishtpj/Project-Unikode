! Number guesser game written in Fortran
! Written by M.V.Harish Kumar on 14-05-2024
program num_guess
    implicit none
    real :: rand
    integer :: rnum, unum, guesses, len
    integer, allocatable :: guessed_nums(:)

    print '(a)', "Number Guessing Game"
    print '(a)', "Guess the number which the computer thinks of"
    print '(a)', "The number is between 1 to 100"
    
    ! Initialize random number generator
    call random_seed()
    call random_number(rand)
    rnum = 1 + floor(rand * 100)
    
    guesses = 0
    allocate(guessed_nums(0))

    do
        print '(a$)', "Enter your guess: "
        read(*,*) unum

        if (unum == rnum) then
            guesses = guesses + 1
            print '(a,i0,a)', "Yay! You've guessed the number in ", guesses, " guesses"
            exit
        else if (unum > 100 .or. unum < 1) then
            print '(a)', "Guessed number is out of range"
            guesses = guesses + 1
        else if (unum < rnum) then
            print '(a)', "You've guessed low"
            if (.not. any(guessed_nums == unum)) guesses = guesses + 1
        else
            print '(a)', "You've guessed high"
            if (.not. any(guessed_nums == unum)) guesses = guesses + 1
        end if
        len = size(guessed_nums)
        deallocate(guessed_nums)
        allocate(guessed_nums(len+1))
        guessed_nums(len+1) = unum
    end do

    deallocate(guessed_nums)
end program num_guess
