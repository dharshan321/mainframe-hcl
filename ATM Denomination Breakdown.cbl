      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
              IDENTIFICATION DIVISION.
       PROGRAM-ID. INTDATE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOOFFIVE PIC 9(2) .
       01 NOOFHUN PIC 9(2).
       01 NOOFTWO PIC 9(2) .
       01 TOTALAMOUNT PIC 9(5) .
       01 MOVENUMBER PIC Z9.



       PROCEDURE DIVISION.
           DISPLAY "ENTER THE TOTAL AMOUNT "
           ACCEPT TOTALAMOUNT
           IF FUNCTION MOD(TOTALAMOUNT,100) NOT = 0
               DISPLAY "NOT VALID AMOUNT"
               STOP RUN
           END-IF

           
           PERFORM UNTIL TOTALAMOUNT<500
               ADD 1 TO NOOFFIVE
               SUBTRACT 500 FROM TOTALAMOUNT
           END-PERFORM
           
           
           PERFORM UNTIL TOTALAMOUNT <200
               ADD 1 TO NOOFTWO
               SUBTRACT 200 FROM TOTALAMOUNT
           END-PERFORM
           
           
           PERFORM UNTIL TOTALAMOUNT<100
               ADD 1 TO NOOFHUN
               SUBTRACT 100 FROM TOTALAMOUNT
           END-PERFORM
           
           MOVE NOOFFIVE TO MOVENUMBER
           DISPLAY "500:" MOVENUMBER
           MOVE NOOFTWO TO MOVENUMBER
           DISPLAY "200:"  MOVENUMBER
           MOVE NOOFHUN TO MOVENUMBER
           DISPLAY "100:" MOVENUMBER
           STOP RUN.
