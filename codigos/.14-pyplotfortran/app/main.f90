 program plotArray
     use,intrinsic :: iso_fortran_env, only: wp => real32
     use pyplot_module
     implicit none

     type(pyplot) :: plt
     integer, parameter:: nz=375, nx=368
     real(wp) :: A(nz,nx)
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

 end program plotArray
