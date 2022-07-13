module vectorOps
    implicit none

    real function dotProduct(a, b)
        real :: a(:), b(:)
        integer :: n

        n = size(a)

        ! insira aqui o loop do dotproduct
    end function dotProduct

end module vectorOps

program aprendendoFunc
    use vectorOps
    implicit none

    print*, dotProduct(1.323, 1.432)
end program aprendendoFunc
