
function validacion(){
	var isbn = document.getElementById("isbn");
	var miformulario = document.getElementById("miformulario");
	
	if(isbn.value == "")
	{
		alert("Error, datos no validos.");
		return false;
	}
	else if(!isValidISBN13(isbn.value))
		alert('Error, el ISBN no sigue el formato ISBN-13');
	else
		miformulario.submit();
}
/**
 * Fuente: http://en.wikipedia.org/wiki/International_Standard_Book_Number
 * @param ISBNumber
 * @returns {Boolean}
 * Comprueba que el ISBN es ISBN-13
 */
function isValidISBN13(ISBN) {
    var check, i;
 
    ISBN = ISBN.replace(/-\s/g,'');
 
    check = 0;
    for (i = 0; i < 13; i += 2) {
      check += +ISBN[i];
    }
    for (i = 1; i < 12; i += 2){
      check += 3 * +ISBN[i];
    }
    return check % 10 === 0;
}