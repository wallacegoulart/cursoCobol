       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB04.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: RECEBER NOME E SALARIO
      *          IMPRIMIR FORMATADO.
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME           PIC X(20)        VALUES SPACES.
       77  WRK-SALARIO        PIC 9(06)V99     VALUES ZEROS.
       77  WRK-SALARIO-ED     PIC $ZZZ.ZZ9,99  VALUES ZEROS.
       PROCEDURE DIVISION.

           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.

      ********* MOSTRA DADOS *******************************

           DISPLAY 'NOME..' WRK-NOME.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO: R$' WRK-SALARIO-ED.

           STOP RUN.
