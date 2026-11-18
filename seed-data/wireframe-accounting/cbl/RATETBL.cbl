      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : RATETBL
      * TYPE    : SUB
      *
      * Rate table lookup with lazy load.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RATETBL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-LOADER               PIC X(08).
           COPY RATEREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           MOVE 'RATELOAD' TO WS-LOADER
           CALL WS-LOADER
           GOBACK.
