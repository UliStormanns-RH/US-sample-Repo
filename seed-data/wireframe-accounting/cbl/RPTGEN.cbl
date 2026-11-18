      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : RPTGEN
      * TYPE    : SUB
      *
      * Generates statement report.
      * REPORT IS WRITTEN TO SYSOUT
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RPTGEN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY RPTLINE.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'FMTAMT'
           CALL 'DATEUTIL'
           CALL 'PRTSPOOL'
           GOBACK.
