       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM-NAT.
       AUTHOR. HARISH-KUMAR.
       DATE-WRITTEN. 2025/04/08.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N PIC 9(10).
       01 I PIC 9(10).
       01 TOTAL PIC 9(18) VALUE 0 USAGE COMP.
       01 D-N PIC Z(10).
       01 D-TOTAL PIC Z(18).

       PROCEDURE DIVISION.
           DISPLAY "Enter value for `n`: " WITH NO ADVANCING.
           ACCEPT N.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               ADD I TO TOTAL
           END-PERFORM.
           MOVE N TO D-N.
           MOVE TOTAL TO D-TOTAL.
           DISPLAY "The sum from 1 to " FUNCTION TRIM(D-N) " is " 
               FUNCTION TRIM(D-TOTAL).
           STOP RUN.
           