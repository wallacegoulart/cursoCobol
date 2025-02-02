       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB10.
      ************************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = WALLACE
      *OBJETIVO: RECEBER USUARIO E NIVEL (88)
      *DATA = 10/04/2021
      ***********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-USUARIO       PIC X(20)  VALUE SPACE.
       77  WRK-NIVEL         PIC 9(02)  VALUE ZEROS.
           88 ADM VALUE 01.
           88 DIR VALUE 02.

       PROCEDURE DIVISION.
           DISPLAY 'USUARIO.. '
           ACCEPT WRK-USUARIO.

           DISPLAY 'NIVEL..'
           ACCEPT WRK-NIVEL.

           IF ADM
               DISPLAY 'NIVEL - ADM '
               ELSE
                   IF DIR
                       DISPLAY 'NIVEL DIRETOR'
                   ELSE
                       DISPLAY 'NAO AUTORIZADO'

                  END-IF.




           STOP RUN.
