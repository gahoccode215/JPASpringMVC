//Sử dụng để trả về 1 dòng dữ liệu trên Table
//Trong đó : $tableID là ID của tableID và $idRow : chỉ số dòng đang chọn
function Global_JS_GetRowSelected($tableID,$idxRow){
		return document.getElementById($tableID).rows[$idxRow];
}

 