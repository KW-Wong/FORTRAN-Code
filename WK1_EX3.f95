PROGRAM WK1_EX3
! Author: Wong Kin Wing 17-804-733
! Write and test a program that
! asks the user for a positive integer number
! checks whether it is positive and prints an
! error message if not
! calculates the factorial of the number
! prints the result to the screen
    IMPLICIT NONE
    INTEGER I
    INTEGER FACTORIAL
    FACTORIAL = 1

    PRINT*, "PLEASE INPUT A INTEGER"
    READ*, I

    IF (I<1) THEN
        PRINT*, "IT IS NOT A POSITIVE INTEGER"
    ELSE
        DO WHILE (I>1)
            FACTORIAL=FACTORIAL*I
            I=I-1
        END DO
        PRINT*, "FACTORIAL IS:", FACTORIAL
    END IF
END
