      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : RATELOAD
      * TYPE    : SUB
      *
      * Loads all rates from table RATES.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RATELOAD.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY RATEREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DBACCESS'
           GOBACK.
