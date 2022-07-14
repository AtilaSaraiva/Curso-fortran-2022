program acessoDireto
    implicit none
    integer :: io, length
    real,allocatable :: v(:,:)

    allocate(v(2,2))
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]

    inquire(iolength=length) v
    open(newunit=io, file="binary", &
         status="replace", action="write", &
         access="direct", recl=length)

    write(io, rec=1) v(:,:)
    close(io)

    open(newunit=io, file="binary", &
         status="old", action="read", &
         access="direct", recl=length)

    read(io,rec=1) v(:,:)
    close(io)

    print*, v(1,:)
    print*, v(2,:)
end program acessoDireto
