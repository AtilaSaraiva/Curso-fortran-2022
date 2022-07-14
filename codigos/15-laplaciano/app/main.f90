 program plotArray
    use,intrinsic :: iso_fortran_env, only: wp => real32
    use filtros
    use pyplot_module
    implicit none

    type(pyplot) :: plt
    integer, parameter:: nz=375, nx=368
    real, parameter :: dx=25, dz=8
    real(wp) :: A(nz,nx), A_filtrado(nz,nx)
    integer:: io

    open(newunit=io, file="model-375.cwp", access="stream", &
        status="old", action="read")
    read(io) A
    close(io)

    !plot it:
    call plt%initialize(grid=.true.,xlabel='N', ylabel='M', &
                        title='Plot of $A$',legend=.true.)
    call plt%add_imshow(A)
    call plt%showfig()

    A_filtrado = laplaciano(A, dz, dx)

    !plot it:
    call plt%initialize(grid=.true.,xlabel='N', ylabel='M', &
                        title='Plot of $A$',legend=.true.)
    call plt%add_imshow(A_filtrado)
    call plt%showfig()

 end program plotArray
