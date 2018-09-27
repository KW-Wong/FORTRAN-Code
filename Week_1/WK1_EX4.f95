PROGRAM WK1_EX4
! Author: Wong Kin Wing 17-804-733
! Write a program that calculates the mean and
! standard deviation of an series of (real) numbers
! that the user inputs
!– Ask the the user to input how many numbers (this will
! be an integer)
!– check the user has input a positive number
!– input each number in turn (these will be real, and could
! be +ve or –ve) and add to the sum and (sum of
! squared) immediately so you don’t have to store them
!– after all numbers are input, calculate the mean and
! standard deviation from the sum, sum_of_squared and
! number
    IMPLICIT NONE
    INTEGER I, J
    REAL DUMMY_SUM, DUMMY_SUM2
    REAL NUM
    DUMMY_SUM = 0.0
    DUMMY_SUM2 = 0.0

    PRINT*, "HOW MANY NUMBER YOU WOULD LIKE TO INPUT"
    READ*, J

    I=J

    IF (I<1) THEN
        PRINT*, "IT IS NOT A POSITIVE INTEGER"
    ELSE
        PRINT*, "PLEASE INPUT THE NUMBERS SEQUENTIALLY, LINE BY LINE"
        DO WHILE (I>=1)
            READ*, NUM
            DUMMY_SUM=DUMMY_SUM+NUM
            DUMMY_SUM2=DUMMY_SUM2+NUM**2
            I=I-1
        END DO
        PRINT*, "SUM IS:", DUMMY_SUM
        PRINT*, "SUM OF SQUARE IS:", DUMMY_SUM2
        PRINT*, "MEAN IS:", DUMMY_SUM/(J+0.0)
        PRINT*, "SD IS:", SQRT((DUMMY_SUM2/(J+0.0))-(DUMMY_SUM/(J+0.0))**2)
    END IF
END
