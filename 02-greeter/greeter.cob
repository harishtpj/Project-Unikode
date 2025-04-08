       IDENTIFICATION DIVISION.
       PROGRAM-ID. GREETER.
       AUTHOR. HARISH-KUMAR.
       DATE-WRITTEN. 2025/04/07.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME PIC X(25).
       
       PROCEDURE DIVISION.
           DISPLAY "Please enter your name: " WITH NO ADVANCING.
           ACCEPT WS-NAME.
           DISPLAY "Hello, " FUNCTION TRIM(WS-NAME) "! Hope you're fine".
           STOP RUN.
           