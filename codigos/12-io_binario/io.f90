program acessoDireto
    implicit none
    integer :: io, length
    real,allocatable :: v(:,:)

    allocate(v(2,2))
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]

    ! insira o código de leitura e escrita com acesso strem aqui

    print*, v(1,:)
    print*, v(2,:)
end program acessoDireto
