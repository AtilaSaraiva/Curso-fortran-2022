module filtros
    implicit none

contains

    ! Escreva o filtro laplaciano aqui
    function laplaciano (A, dz, dx)
        real, intent(in):: A(:,:), dz, dx
        real:: laplaciano(size(A,1),size(A,2))

        integer:: nz, nx, i, j

        nz = size(A,1)
        nx = size(A,2)

        do concurrent (i=2:nz-1, j=2:nx-1)
            associate (Dxx => (A(i,j+1) + A(i,j-1) - 2*A(i,j)), &
                        Dzz => A(i+1,j) + A(i-1,j) - 2*A(i,j))
                laplaciano(i,j) = Dxx/dx**2 + Dzz/dz**2
            end associate
        end do
    end function laplaciano
end module filtros
