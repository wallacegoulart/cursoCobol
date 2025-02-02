       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXE02.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME         PIC X(20)    VALUE SPACES.
       77  WRK-ANO          PIC 9(04)    VALUE ZEROS.
       77  WRK-SALARIO      PIC 9(09)V99 VALUE ZEROS.
       77  WRK-RESUL        PIC 9(04)    VALUES ZEROS.
       77  WRK-SALARIO-ED   PIC $ZZZ.ZZ9,99  VALUES ZEROS.
       77  WRK-V            PIC 9(02)V99    VALUE ZEROS.

       PROCEDURE DIVISION.

           DISPLAY 'NOME...'.
           ACCEPT WRK-NOME.

           DISPLAY 'ANO..'.
           ACCEPT WRK-ANO.

           DISPLAY 'SALARAIO..'
           ACCEPT WRK-SALARIO.


      **********CALCULO DO ANO******************
           COMPUTE WRK-RESUL = (2021 - WRK-ANO).



           EVALUATE WRK-RESUL

               WHEN 0 THRU 1
               DISPLAY 'AUMENTO DE 0%'  MOVE 0 TO WRK-V


               WHEN 2 THRU 5
               DISPLAY 'AUMENTO DE 5%' MOVE 0,05 TO WRK-V


               WHEN 06 THRU 15
               DISPLAY 'AUMENTO DE 10%' MOVE 0,1 TO WRK-V


               WHEN 16 THRU 99
               DISPLAY 'AUMENTO DE 15%' MOVE 0,15 TO WRK-V



               END-EVALUATE.


           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO ANTIGO: R' WRK-SALARIO-ED.

           COMPUTE WRK-SALARIO = WRK-SALARIO + ( WRK-SALARIO* WRK-V).

           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO NOVO: R' WRK-SALARIO-ED.
           DISPLAY 'VARIAVEL ' WRK-V.

           STOP RUN.
