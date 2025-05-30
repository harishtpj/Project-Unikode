       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL.
       AUTHOR. HARISH-KUMAR.
       DATE-WRITTEN. 2025/04/08.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N PIC 9(5).
       01 I PIC 9(5).
       01 RESULT PIC 9(18) VALUE 1 USAGE COMP.
       01 D-N PIC Z(5).
       01 D-RESULT PIC Z(18).

       PROCEDURE DIVISION.
           DISPLAY "Enter value for `n`: " WITH NO ADVANCING.
           ACCEPT N.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               MULTIPLY I BY RESULT
           END-PERFORM.
           MOVE N TO D-N.
           MOVE RESULT TO D-RESULT.
           DISPLAY FUNCTION TRIM(D-N) "! = " FUNCTION TRIM(D-RESULT).
           STOP RUN.
