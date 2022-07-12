program variaveis
    implicit none

    real             :: numeroDecimal = 3.141592
    integer          :: numeroInteiro = 3
    character        :: caractere     = "a"
    character(len=5) :: nome          = "atila"
    logical          :: boleano       = .true.

    print*, "Número real: ", numeroDecimal
    print*, "Número inteiro: ", numeroInteiro
    print*, "Caractere único: ", caractere
    print*, "String: ", nome
    print*, "Boleano: ", boleano

end program variaveis
