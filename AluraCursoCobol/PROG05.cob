       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB05.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: OPERADOR ARITIMETICOS
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1  PIC 9(02) VALUE ZEROS.
       77  WRK-NUM2  PIC 9(02) VALUE ZEROS.
       77  WRK-RESUL PIC 9(03) VALUE ZEROS.
       77  WRK-RESTO PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY 'NUMERO1.. ' WRK-NUM1.
           DISPLAY 'NUMERO2.. ' WRK-NUM2.
      ******************SOMA*************************
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'RESUL SOMA: '    WRK-RESUL.

      *****************SUBTRAÇÃO**********************
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'RESUL SUBTRACAO: '    WRK-RESUL.

      ****************DIVISAO*************************
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
           REMAINDER WRK-RESTO.
           DISPLAY 'RESUL DIVISAO: '    WRK-RESUL.
           DISPLAY 'RESTO.. ' WRK-RESTO.

      *****************MULTIPLICAO*********************
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'RESUL  MULTIPLICAO: '    WRK-RESUL.

      ******************COMPUTE MEDIA*************************
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2)/2.
           DISPLAY 'RESUL  MEDIA: '    WRK-RESUL.

           STOP RUN.
