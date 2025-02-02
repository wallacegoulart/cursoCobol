       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTECPF.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: RECEBER CPF
      *          IMPRIMIR FORMATADO.
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-CPF        PIC X(11)            VALUES ZEROS.
       77  WRK-CPF-ED     PIC ZZZ.ZZZ.ZZZ/ZZ      VALUES ZEROS.
       PROCEDURE DIVISION.

           ACCEPT WRK-CPF FROM CONSOLE.

      ********* MOSTRA DADOS *******************************

           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'CPF: ' WRK-CPF-ED.

           STOP RUN.
