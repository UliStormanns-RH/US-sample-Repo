      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ERRHNDLR
      * TYPE    : SUB
      *
      * Central error handler.
      * THIS ROUTINE NEVER ABENDS - IT ONLY LOGS
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ERRHNDLR.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ERR-SEVERITY            PIC 9(02).
           COPY ERRCODES.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'LOGWRITE'
           IF ERR-SEVERITY >= 12
              CALL 'CEE3ABD'
           END-IF
           GOBACK.
