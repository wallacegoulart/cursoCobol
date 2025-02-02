       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB17.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      *          UTILIZAR VARIAVEIS TIPO TABELA -  REDEFINES
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.

       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(3) OCCURS 12 TIMES.



       01 WRK-DATA.
           02 WRK-ANOSYS PIC 9(04) VALUE ZEROS.
           02 WRK-MESSYS PIC 9(02) VALUE ZEROS.
           02 WRK-DIASYS PIC 9(02) VALUE ZEROS.



       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA.. ' WRK-DIASYS '/' WRK-MES(WRK-MESSYS)
                   '/' WRK-ANOSYS.
           STOP RUN.
