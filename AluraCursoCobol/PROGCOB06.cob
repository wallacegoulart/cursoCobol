       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB06.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: ESTUDO DE SINAIS
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1      PIC 9(02)  VALUE ZEROS.
       77  WRK-NUM2      PIC 9(02)  VALUE ZEROS.
       77  WRK-RESUL     PIC S9(03) VALUE ZEROS.
       77  WRK-RESUL-ED  PIC -999   VALUE ZEROS.


       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY 'NUMERO1.. ' WRK-NUM1.
           DISPLAY 'NUMERO2.. ' WRK-NUM2.

      *****************SUBTRAÇÃO**********************
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED

           DISPLAY 'RESUL SUBTRACAO 1: '    WRK-RESUL.
           DISPLAY 'RESUL SUBTRACAO 2: '    WRK-RESUL-ED.
           STOP RUN.
