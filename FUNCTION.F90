! Calculates the area of a circle
FUNCTION Area_Circle(pi, x)

implicit none

REAL :: Area_Circle
REAL, INTENT(IN) :: x
REAL, INTENT(IN) :: pi

Area_Circle = pi * x * x

END FUNCTION Area_Circle

