program aprendendoIO
    implicit none
    integer :: io
    real,allocatable :: v(:,:)

    allocate(v(2,2))
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]

    open(newunit=io, file="log.txt", &
      & status="replace", action="write")
    write(io, *) v(:,:)
    close(io)
end program aprendendoIO
