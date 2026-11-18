      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTONL
      * TYPE    : CICS
      *
      * CICS transaction ACC1 - account inquiry screen.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTONL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY ACCTMAP.
           COPY ACCTREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           EXEC CICS LINK PROGRAM('ACCTINQ')
           END-EXEC
           EXEC CICS XCTL PROGRAM('ACCTMENU')
           END-EXEC
           CALL 'LOGWRITE'
           EXEC CICS RETURN END-EXEC.
