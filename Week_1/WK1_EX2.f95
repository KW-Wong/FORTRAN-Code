PROGRAM WK1_EX2
! Author: Wong Kin Wing 17-804-733
! Write a program that asks the user to
! input three real numbers, then
! calculates the arithmetic mean,
! harmonic mean and geometric mean
! and prints them to the screen.
    IMPLICIT NONE
    REAL I , J , K

    PRINT*, "PLEASE INPUT THREE REAL NUMBERS, PLEASE SEPARATE THE NUMBERS WITH SPACE"
    READ*, I, J, K

    PRINT*, "ARITHMETIC MEAN:", (I+J+K)/3.0
    PRINT*, "HARMONIC MEAN:", (3.0/(1/I+1/J+1/K))
    PRINT*, "GEOMETRIC MEAN:", (I*J*K)**(1/3.0)
END
