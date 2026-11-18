      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTBTCH
      * TYPE    : BATCH
      *
      * Daily account batch. Reads transaction file, validates and
      * posts transactions, writes report.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTBTCH.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY ACCTREC.
           COPY ERRCODES.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'ACCTREAD'
           CALL 'ACCTVAL'
           CALL 'ACCTUPD'
           CALL 'RPTGEN'
           CALL 'LOGWRITE'
           CALL 'ERRHNDLR'
           GOBACK.
