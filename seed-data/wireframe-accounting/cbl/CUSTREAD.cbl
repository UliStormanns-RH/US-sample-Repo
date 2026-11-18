      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : CUSTREAD
      * TYPE    : SUB
      *
      * Reads customer by customer id.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CUSTREAD.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY CUSTREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DBACCESS'
           CALL 'ADDRFMT'
           GOBACK.
