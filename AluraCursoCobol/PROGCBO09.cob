       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB09.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: DECISÃO USANDO COMANDO EVALUETE 2(CALCULO DE FRETE)
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PROD       PIC X(20)  VALUE SPACE.
       77  WRK-UF         PIC X(02)  VALUE SPACE.
       77  WRK-VALOR      PIC 9(06)V99  VALUE ZEROS.
       77  WRK-FRETE      PIC 9(04)V99  VALUE ZEROS.


       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO.. '
           ACCEPT WRK-PROD.

           DISPLAY 'VALOR..'
           ACCEPT WRK-VALOR.

           DISPLAY 'ESTADO..'
           ACCEPT WRK-UF.


           EVALUATE WRK-UF

             WHEN 'SP'
              COMPUTE WRK-FRETE = (WRK-VALOR *1,05) - WRK-VALOR

             WHEN 'RJ'
               COMPUTE WRK-FRETE = (WRK-VALOR *1,10 ) - WRK-VALOR

             WHEN 'MG'
               COMPUTE WRK-FRETE = (WRK-VALOR *1,15) - WRK-VALOR

              WHEN OTHER
                DISPLAY 'NAO PODEMOS ENTREGAR '
                END-EVALUATE.

           DISPLAY '================'
           DISPLAY'VALOR DO FRETE: R$' WRK-FRETE.


           STOP RUN.
