 program plotArray
     use,intrinsic :: iso_fortran_env, only: wp => real64
     use pyplot_module
     implicit none

     type(pyplot) :: plt
     real(wp) :: A(10,10)

     A(1:5,:) = 1
     A(6:10,:) = 2

     !plot it:
     call plt%initialize(grid=.true.,xlabel='N', ylabel='M', &
                         title='Plot of $A$',legend=.true.)
     call plt%add_imshow(A)
     call plt%showfig()

 end program plotArray
