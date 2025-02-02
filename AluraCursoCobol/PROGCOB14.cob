       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB14.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: CONCEITOS DE PARAGRAFOS (PERFOM VARYING E UNTIL)
      *           GERA TABUADA DE 1 A 10
      *DATA = 13/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUMERO        PIC 9(02)  VALUE ZEROS.
       77  WRK-CONTADOR      PIC 9(02)  VALUE 1.
       77  WRK-MULT          PIC 9(03)  VALUE ZEROS.

       PROCEDURE DIVISION.

           PERFORM 0100-INCIALIZAR.

               IF WRK-NUMERO >0
                   PERFORM 0200-PROCESSAR
               END-IF.

           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INCIALIZAR.
           DISPLAY 'NUMERO.. '
           ACCEPT WRK-NUMERO.



       0200-PROCESSAR.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                           UNTIL WRK-CONTADOR >20
              COMPUTE WRK-MULT = WRK-NUMERO * WRK-CONTADOR
              DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-MULT
           END-PERFORM.

       0300-FINALIZAR.
           DISPLAY '------------------'.
           DISPLAY 'FIM DE PROCESSAMENTO'.
