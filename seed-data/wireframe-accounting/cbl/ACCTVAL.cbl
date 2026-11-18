      *=================================================================
      * SYNTHETIC SKELETON - GENERATED FROM SEED-DATA METADATA.
      * NOT ORIGINAL SOURCE CODE. ONLY THE CALLS, COPY STATEMENTS,
      * HEADER COMMENT AND CODE EXCERPTS COME FROM THE SEED DATA.
      *=================================================================
      * PROGRAM : ACCTVAL
      * TYPE    : SUB
      *
      * Validates a transaction against its account.
      * REJECT DORMANT ACCOUNTS OLDER THAN 10 YEARS
      *=================================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTVAL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-AGE-YEARS            PIC 9(03).
       01  VALID-FLAG              PIC X(01).
           COPY ACCTREC.
           COPY TRANREC.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL 'DATEUTIL'
           CALL 'CHKDIGIT'
           CALL 'CUSTREAD'
           CALL 'ERRHNDLR'
           IF WS-AGE-YEARS > 5 AND ACCT-DORMANT = 'Y'
              MOVE 'N' TO VALID-FLAG
           END-IF
           GOBACK.
