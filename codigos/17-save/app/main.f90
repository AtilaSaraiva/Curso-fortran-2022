program main
    implicit none

    call f()  ! yields: 1
    call f()  ! yields: 2
    call f()  ! yields: 3

contains

    ! Escrever subrotina com argumento save para um inteiro e o incrementa a cada call da subrotina, imprimindo na tela o resultado
end program main
