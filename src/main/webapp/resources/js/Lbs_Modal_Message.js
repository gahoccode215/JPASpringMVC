
    // your code 

var Lbs_Modal_Var01 = document.getElementById("Global_Modal_ID00");

// Get the button that opens the Lbs_Modal_Var01
var Lbs_Modal_Button01 = document.getElementById("Global_Modal_Open00");



var closes = document.getElementById("Global_Modal_Close00");

// When the user clicks the button, open the Lbs_Modal_Var01 
Lbs_Modal_Button01.onclick = function() {
  Lbs_Modal_Var01.style.display = "block";
}


if(closes!=null){
closes.onclick = function() {
  Lbs_Modal_Var01.style.display = "none";
}
}
// When the user clicks anywhere outside of the Lbs_Modal_Var01, close it
window.onclick = function(event) {
  if (event.target == Lbs_Modal_Var01) {
    Lbs_Modal_Var01.style.display = "none";
  }
}
function Lbs_Func_getCurrentModal() {
	var returns = document.getElementById("Lbs_Modal_Return");
	if(returns){
		Lbs_Modal_Var01.style.display = "block";
	}
 
}
if(Lbs_Modal_Var01!=null){
    window.onload = Lbs_Func_getCurrentModal;
}
