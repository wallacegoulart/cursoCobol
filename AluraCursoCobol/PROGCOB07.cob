       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB07.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: DECISÃO USANDO COMANDOS IF/ELSE
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1      PIC 9(02)  VALUE ZEROS.
       77  WRK-NOTA2      PIC 9(02)  VALUE ZEROS.
       77  WRK-MEDIA      PIC 9(03)V9  VALUE ZEROS.


       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
           DISPLAY 'NUMERO1.. ' WRK-NOTA1.
           DISPLAY 'NUMERO2.. ' WRK-NOTA2.

      *****************MEDIA**********************
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/ 2.

      ***************IF/ELSE********************
           IF WRK-MEDIA >= 6
               DISPLAY 'ARPOVADO'
               ELSE
                   IF WRK-MEDIA >= 2
                   DISPLAY 'RECUPERACAO'
                   ELSE
                       DISPLAY 'REPROVADO'
                       END-IF
               END-IF.


           DISPLAY 'MEDIA : '    WRK-MEDIA.
           STOP RUN.
