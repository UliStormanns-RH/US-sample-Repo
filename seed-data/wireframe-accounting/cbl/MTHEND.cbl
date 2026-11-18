      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : MTHEND
      * TYPE    : BATCH
      *
      * Month-end driver. Runs interest posting and produces the month-
      * end statement report.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MTHEND.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY ACCTREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'INTCALC'
           CALL 'RPTGEN'
           CALL 'AUDITLOG'
           CALL 'LOGWRITE'
           GOBACK.
