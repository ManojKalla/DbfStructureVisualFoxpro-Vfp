CLOSE DATABASES

gnDbcnumber = ADIR(gaDatabase, '*.DBF')  && Create array

CLEAR
FOR nCount = 1 TO gnDbcnumber  && Loop for number of databases
	   FileName =  gaDatabase(nCount,1)  && Display database names
	   srchDot = AT(".",FileName)
	   	DbfFileName = SUBSTR(FileName,1,srchDot-1)
   	   WAIT WINDOW " Reading Table : "+dbffilename TIMEOUT 1
	   IF DbfFileName <> "DBFSTRU"
	   		DbfStru(DbfFileName)
		WAIT WINDOW " Table completed : "+dbffilename NOWAIT 
	   ENDIF 
ENDFOR
