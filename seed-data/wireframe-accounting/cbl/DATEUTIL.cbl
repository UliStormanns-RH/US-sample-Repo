      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : DATEUTIL
      * TYPE    : SUB
      *
      * Date utility: difference in days, formatting.
      * RETURNS FORMATTED DATE AS DD.MM.YYYY
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATEUTIL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-PICSTR               PIC X(10).
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'CEEDAYS'
           MOVE 'YYYY-MM-DD' TO WS-PICSTR
           CALL 'CEEDATE'
           GOBACK.
