      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : AUDITLOG
      * TYPE    : SUB
      *
      * Writes an audit trail record.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AUDITLOG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY AUDREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'LOGWRITE'
           CALL 'DATEUTIL'
           GOBACK.
