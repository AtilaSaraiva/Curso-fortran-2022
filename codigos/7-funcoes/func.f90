! Passe as operações desse código para dentro de funções e subrotinas


program aprendendoFunc
    implicit none
    integer:: a, b
    integer:: res

    ! função/subrotina aqui ----
    print*, "Insira dois valores inteiros"
    read(*,*) a
    read(*,*) b
    ! --------------------------

    ! função/subrotina aqui ----
    res = a * b
    ! --------------------------
    print*, "a * b = ", res

    ! função/subrotina aqui ----
    res = a + b
    ! --------------------------
    print*, "a + b = ", res

    ! função/subrotina aqui ----
    res = a - b
    ! --------------------------
    print*, "a - b = ", res

    ! função/subrotina aqui ----
    res = a / b
    ! --------------------------
    print*, "a / b = ", res

contains

    ! Insira as funções aqui

end program aprendendoFunc
