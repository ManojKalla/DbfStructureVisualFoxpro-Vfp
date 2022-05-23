PARAMETERS DbfVal
CLOSE ALL 
IF FILE("&DbfVal"+".dbf")=.t.
	SELECT 0
	USE "&DbfVal" ALIAS db && Open Customer table.

	gnFieldcount = AFIELDS(gaMyArray)  && Create array.
	CLEAR

	SELECT 0
	USE DbfStru  EXCLUSIVE 
	DELETE FOR DbfName = DbfVal
	PACK 		

	mFieldName = ""
	mFieldType = ""
	mFieldSize = ""	
	FOR nCount = 1 TO gnFieldcount 
		SELECT db	
	   mFieldName = gaMyArray(nCount,1)  && Display field names.
	   mFieldType = TYPE(mFieldName)
	   mFieldSize = FSIZE(gaMyArray(nCount,1))


	   SELECT DbfStru
	   APPEND BLANK
	   Replace DbfName WITH DbfVal
	   Replace FieldName WITH mFieldName
	   Replace FieldType WITH mFieldType
   	   Replace FieldSize WITH mFieldSize
	   
	   
	ENDFOR

	RETURN DbfVal+" Fields Details Added to DbfStru.dbf file "
ELSE 

	RETURN DbfVal+" File Not Found."
ENDIF 

