! Escreva aqui um código que imprima os índices de 2 do loops
! entrelaçados com do, do while e do concurrent

program loop
    implicit none
    integer:: i,j

    print*, "do simples"
    do i=1,3
        do j=1,3
            print*, i,j
        end do
    end do

    print*, "do while"
    i=1
    do while(i<=3)
        j = 1
        do while(j<=3)
            print*, i,j
            j = j + 1
        end do
        i = i + 1
    end do


    print*, "do concurrent"
    do concurrent(i=1:3, j=1:3)
        print*, i,j
    end do
end program loop
