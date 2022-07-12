! Escreva aqui um código que gere números aleatórios
! entre 0 e 1 e imprima se ele é menor que 0.3, entre 0.3 e 0.6
! ou maior que 0.6

program xif
    implicit none
    real :: x
    real, parameter :: x1 = 0.3, x2 = 0.6

    call random_seed()
    call random_number(x)
    if (x < x1) then
        print *, x, "<",x1
    else if (x < x2) then
        print *, x, "<", x2
    else
        print *, x, ">=", x2
    end if
end program xif
