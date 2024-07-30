/******************************************

2019-12-03
-Cấu hình Network: Không bắt buộc cấu hình
đủ hai interface. Nếu user để trống thì không
lưu interface vào file.

2019-12-06
-Max Call Bitrate: Min=32kbps;Max=4096kbps

******************************************/

$.validator.addMethod(
    "ascii",
    function(value, element, regexp) {
        var check = false;
        return this.optional(element) || regexp.test(value);
    },
    "Only ASCII (aA-zZ, 0-9)"
);

$.validator.addMethod('le', function(value, element, param) {
      return this.optional(element) || parseFloat(value) <= parseFloat($(param).val());
}, 'Invalid value');

$.validator.addMethod('ge', function(value, element, param) {
      return this.optional(element) || parseFloat(value) >= parseFloat($(param).val());
}, 'Invalid value');

$.validator.addMethod('eq', function(value, element, param) {
      return this.optional(element) || parseInt(value.length) == parseInt($(param).val()) || (value==0 && $(param).val()==0 );
}, 'Invalid value');

$.validator.addMethod('ip4', function(value) {
        var ip = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$";
            return value.match(ip) || value.length==0;
}, 'Invalid IP address');


$.validator.addMethod('cma', function(value) {
        var ip = "^(([1-9]|[1-8][0-9]|9[0-9]|[1-8][0-9]{2}|9[0-8][0-9]|99[0-9])(-([1-9]|[1-8][0-9]|9[0-9]|[1-8][0-9]{2}|9[0-8][0-9]|99[0-9]))?\s*($|,\s*))+$";
            return value.match(ip) && value!=16 && value!=0;
}, 'Invalid value');


$().ready(function() {
	$("#classpage_form").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"01_detail": {
				required: true,
				min: 1,
				max:9
			},
	/*		"02_detail": {
				required: true,
				minlength: 1,
				maxlength: 64
			},
			"03_detail": {
				required: true,
				ascii: /^[\x00-\x7F]*$/,
				minlength: 1,
				maxlength: 64

			},
			"04_detail": {
				required: true,
				eq:"#02_detail"
				

			},
			"05_detail": {
				required: true,
				ip4:true,
				minlength: 7,
				maxlength: 15
			},
			*/
		},
		messages: {
			"01_detail": {
				required: "Required ID Class",
				min: "Min ID Class 0 to 9 ",
				max: "Value ID Class from 1 to 9",
			},
	
		}
	});
	
	
	
	
});