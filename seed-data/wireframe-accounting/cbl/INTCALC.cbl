      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : INTCALC
      * TYPE    : SUB
      *
      * Calculates accrued interest for an account.
      * INTEREST RATES ARE HARD-CODED IN WORKING-STORAGE
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INTCALC.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * RATE TABLE IN WORKING-STORAGE - NOT USED, RATES COME
      * FROM RATETBL.
       01  WS-RATE-TABLE.
           05  WS-RATE-ENTRY       PIC X(01).
           COPY RATEREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DATEUTIL'
           CALL 'RATETBL'
           GOBACK.
