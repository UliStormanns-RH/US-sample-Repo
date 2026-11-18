      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTUPD
      * TYPE    : SUB
      *
      * Posts a validated transaction to the account.
      * NO TAX IS APPLIED DURING POSTING
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTUPD.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY ACCTREC.
           COPY TRANREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DBACCESS'
           CALL 'INTCALC'
           CALL 'TAXCALC2'
           CALL 'AUDITLOG'
           CALL 'ERRHNDLR'
           GOBACK.
