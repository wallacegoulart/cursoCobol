       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB08.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: DECISÃO USANDO COMANDO EVALUETE
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1      PIC 9(02)  VALUE ZEROS.
       77  WRK-NOTA2      PIC 9(02)  VALUE ZEROS.
       77  WRK-MEDIA      PIC 9(02)V9  VALUE ZEROS.


       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
           DISPLAY 'NUMERO1.. ' WRK-NOTA1.
           DISPLAY 'NUMERO2.. ' WRK-NOTA2.

      *****************MEDIA**********************
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/ 2.

      ********************EVALUATE********************
           EVALUATE WRK-MEDIA
             WHEN  6 THRU 10
               DISPLAY 'APROVADO'

             WHEN  2 THRU 5,99
               DISPLAY 'RECUPERACAO'

             WHEN OTHER
               DISPLAY 'REPROVADO'

             END-EVALUATE.



           DISPLAY 'MEDIA : '    WRK-MEDIA.
           STOP RUN.
