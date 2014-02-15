CREATE TABLE tbl_Event {
	--GENERAL COLUMNS
	INT UNSIGNED 	Entry_Id NOT NULL,
	DATETIME 		Entry_Datetime NULL,
	TEXT 			Entry_By NULL,
	DATETIME 		Effective_From NULL,
	DATETIME 		Effective_To NULL,
	BOOLEAN 		Is_Approved NULL DEFAULT 0,
	--TABLE-SPECIFIC COLUMNS
	INT UNSIGNED 	Event_Id NULL,
	TEXT 			Event_Name NULL,
	TEXT 			Event_Description NULL,
	DATETIME 		Event_Datetime NULL,
	TEXT 			Event_Keywords NULL,
	MEDIUMBLOB 		Event_Image NULL
};
/** Author: Andhieka
  * Semua kolom yang diawali dengan "Entry_" itu akan diisi otomatis oleh sistem.
  * Iklan akan dipajang dari "Effective_From" sampai "Effective_To".
  * Is_Approved akan dijadikan true setelah Event diapprove oleh administrator.
  * Jika (Event_Image==NULL), kita akan pakai Event_Name dan Event_Description untuk display.
  **/
