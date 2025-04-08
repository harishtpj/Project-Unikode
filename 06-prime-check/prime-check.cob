       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME-CHECK.
       AUTHOR. HARISH-KUMAR.
       DATE-WRITTEN. 2025/04/08.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM PIC 9(5).
       01 D-NUM PIC Z(5).

       01 IS-P-RES PIC 9.
       01 IS-P-I PIC 999.

       PROCEDURE DIVISION.
           DISPLAY "Prime number checker".
           DISPLAY " ".
           DISPLAY "Enter the number to check for prime: "
               WITH NO ADVANCING.
           ACCEPT WS-NUM.
           MOVE WS-NUM TO D-NUM.

           IF WS-NUM = 2
              MOVE 1 TO IS-P-RES
              GO TO FINAL-OUTPUT
           END-IF.

           PERFORM VARYING IS-P-I FROM 2 BY 1 
               UNTIL IS-P-I > FUNCTION SQRT(WS-NUM)
               IF FUNCTION MOD(WS-NUM, IS-P-I) = 0
                   MOVE 0 TO IS-P-RES
                   GO TO FINAL-OUTPUT
               END-IF
           END-PERFORM.

           IF WS-NUM > 1
               MOVE 1 TO IS-P-RES
           ELSE
               MOVE 0 TO IS-P-RES
           END-IF.
           GO TO FINAL-OUTPUT.
       
       FINAL-OUTPUT.
           IF IS-P-RES = 1
              DISPLAY FUNCTION TRIM(D-NUM) " is Prime"
           ELSE
              DISPLAY FUNCTION TRIM(D-NUM) " is NOT Prime"
           END-IF.
           STOP RUN.
