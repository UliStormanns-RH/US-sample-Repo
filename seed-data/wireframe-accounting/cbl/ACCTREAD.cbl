      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTREAD
      * TYPE    : SUB
      *
      * Reads one account by account number.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTREAD.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY ACCTREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DBACCESS'
           CALL 'ERRHNDLR'
           GOBACK.
