program main
  use add_mod
  implicit none

  print *, "add ints: ", add( 1, 2 )
  print *, "add chars: ", add("abc", "def")
end program main
