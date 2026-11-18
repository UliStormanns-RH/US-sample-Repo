      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTMENU
      * TYPE    : CICS
      *
      * Main menu for account transactions.
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTMENU.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY MENUMAP.
       PROCEDURE DIVISION.
       MAIN-PARA.
           EXEC CICS XCTL PROGRAM('ACCTONL')
           END-EXEC
           EXEC CICS RETURN END-EXEC.
