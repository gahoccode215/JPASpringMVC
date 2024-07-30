
function Oamuser_Js_getRowSelected(){
	
	$index = document.querySelector('input[name=Oamuser_InGroup_1]:checked').value;
	$row = Global_JS_GetRowSelected("Oamuser_Table_1",$index);
	alert($row)
	document.getElementById("Oamuser_Input_1").value = $row.cells[1].innerHTML;
	document.getElementById("Oamuser_Input_2").value = $row.cells[2].innerHTML;
	document.getElementById("Oamuser_Input_3").value = $row.cells[3].innerHTML;
	document.getElementById("Oamuser_Input_4").value = $row.cells[4].innerHTML;
}
 