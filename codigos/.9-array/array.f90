program aprendendoArray
    implicit none
    real,allocatable :: a(:)
    integer          :: i

    !a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
    a = [ (i, i=1,10) ]

    print*, a
    print*, a(:4)
    print*, a(2:5)
end program aprendendoArray
