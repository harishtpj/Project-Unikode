       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULT-TABLE.
       AUTHOR. HARISH-KUMAR.
       DATE-WRITTEN 2025/04/08.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N PIC 9(5).
       01 T PIC 9(5).
       01 I PIC 9(5).
       01 TMP PIC 9(10) VALUE 0 USAGE COMP.

       01 D-N PIC Z(5).
       01 D-I PIC Z(5).
       01 D-RES PIC Z(10).
       
       PROCEDURE DIVISION.
           DISPLAY "Enter the no. to generate tables: " 
                WITH NO ADVANCING.
           ACCEPT N.
           DISPLAY "Enter the no. till which to generate: "
                WITH NO ADVANCING.
           ACCEPT T.

           MOVE N TO D-N.
           DISPLAY FUNCTION TRIM(D-N) " Tables".
           DISPLAY " ".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > T
               MULTIPLY N BY I GIVING TMP
               MOVE I TO D-I
               MOVE TMP TO D-RES
               DISPLAY FUNCTION TRIM(D-N) " x " FUNCTION TRIM(D-I)
                   " = " FUNCTION TRIM(D-RES)
           END-PERFORM.

           STOP RUN.
       