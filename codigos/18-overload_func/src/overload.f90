module add_mod
    implicit none
    private
    public :: add

    ! Escreva aqui a interface para as duas funções

contains

    pure function add_int( x, y )
        integer, intent (in) :: x, y
        integer :: add_int

        add_int = x+y
    end function add_int

    pure function add_char( x, y )
        character (len=*), intent (in) :: x, y
        character (len=len(x)+len(y)), allocatable :: add_char

        add_char = x // y
    end function add_char
end module add_mod
