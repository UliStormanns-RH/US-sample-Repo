      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTINQ
      * TYPE    : SUB
      *
      * Returns account and customer data for inquiry.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTINQ.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY ACCTREC.
           COPY CUSTREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'ACCTREAD'
           CALL 'CUSTREAD'
           CALL 'FMTAMT'
           GOBACK.
