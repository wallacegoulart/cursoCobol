       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB15.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: CONCEITOS DE PARAGRAFOS (PERFOM UNTIL)
      *
      *DATA = 13/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-VENDAS         PIC 9(06)V99  VALUE ZEROS.
       77  WRK-QT             PIC 9(03)     VALUE ZEROS.
       77  WRK-ACUM           PIC 9(08)V99  VALUE ZEROS.


       PROCEDURE DIVISION.

           PERFORM 0100-INCIALIZAR.

               IF WRK-VENDAS >0
                   PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
               END-IF.

           PERFORM 0300-FINALIZAR.
           STOP RUN.



       0100-INCIALIZAR.
           DISPLAY 'VENDAS.. '
           ACCEPT WRK-VENDAS.



       0200-PROCESSAR.
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           PERFORM 0100-INCIALIZAR.



       0300-FINALIZAR.
           DISPLAY '------------------'.
           DISPLAY 'QUANTIDADE DE VENDAS: ' WRK-QT.
           DISPLAY 'VALOR DE VENDAS: ' WRK-ACUM.
           DISPLAY 'FIM DE PROCESSAMENTO'.
