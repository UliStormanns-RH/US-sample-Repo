      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : DBACCESS
      * TYPE    : SUB
      *
      * Generic DB2 access layer (SELECT/UPDATE).
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DBACCESS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY SQLCA.
           COPY DBPARM.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DSNTIAR'
           CALL 'ERRHNDLR'
           GOBACK.
