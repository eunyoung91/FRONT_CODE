document.write("<script src='https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js'></script>");

function encrypto(frmNm, pwd, pwd2) {

	var password = $("form[name="+frmNm+"] input[name="+pwd+"]").val();
	var passphrase = 'eduwill';
	var encrypt = CryptoJS.AES.encrypt(password, passphrase);

	$("form[name="+frmNm+"]").append("<input type='hidden' name='ciphertext' value='" + encrypt.toString() + "' />")
							 .append("<input type='hidden' name='passphrase' value='" + passphrase + "' />");

	$("form[name="+frmNm+"] input[name="+pwd+"]").val('');
	$("form[name="+frmNm+"] input[name="+pwd2+"]").val('');

}