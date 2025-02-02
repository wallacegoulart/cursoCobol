       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB03.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      *          UTILIZAR VARIAVEIS NIVEL 01,02.. (ESTRUTURADA)
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(04) VALUE ZEROS.
           02 WRK-MES PIC 9(02) VALUE ZEROS.
           02 WRK-DIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA.. ' WRK-DIA '/' WRK-MES '/' WRK-ANO.
           STOP RUN.
