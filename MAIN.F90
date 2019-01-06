! main program
program main
    use MOD

    implicit none

    REAL     :: r, A
    REAL,EXTERNAL   :: Area_Circle
    r = 3.0
    A = Area_Circle(pi,r)
    PRINT*, A

end program main



