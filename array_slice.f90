program array_slice
    implicit none

    integer :: i
    integer :: array1(10) ! 1D integer array of 10 elements
    integer :: array2(10, 10) ! 2D integer array of 100 elements
    character :: exiter

    ! Array constructor
    array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print *, 'Array 1: '
    print *, array1

    ! Implied loop constructor
    array1 = [(i, i = 1, 10)]
    print *, 'Implied loop constructor: '
    print *, array1

    ! Set all elements to zero
    array1(:) = 0
    print *, 'Set all elements to zero: '
    print *, array1

    ! Set first five elements to one
    array1(1:5) = 1
    print *, 'Set first five elements to one:'
    print *, array1

    ! Set all elements first five to one
    array1(6:) = 1
    print *, 'Set all elements first five to one:'
    print *, array1

    ! Print out elements at odd indices
    print *, 'Print out elements at odd indices:'
    print *, array1(1:10:2)

    ! Print out the first column in a 2D array
    Print *, 'Print out the first column in a 2D array:'
    print *, array2(:,1)

    ! Print an array in reverse
    Print *, 'Print an array in reverse:'
    print *, array1(10:1:-1)

    ! Print array 2
    print *, 'Array 2:'
    print *, array2

    print *, 'Press any letter+Enter to exit:'
    read(*,*) exiter

end program array_slice



