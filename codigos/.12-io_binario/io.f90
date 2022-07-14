program acessoDireto
    implicit none
    integer :: io, length
    real,allocatable :: v(:,:)

    allocate(v(2,2))
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]

    open(newunit=io, file="binary", &
         status="replace", action="write", &
         access="stream")

    write(io) v(:,:)
    close(io)

    open(newunit=io, file="binary", &
         status="old", action="read", &
         access="stream")

    read(io) v(:,:)
    close(io)

    print*, v(1,:)
    print*, v(2,:)
end program acessoDireto
