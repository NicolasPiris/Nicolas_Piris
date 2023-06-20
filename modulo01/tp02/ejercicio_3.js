var num = parseFloat (prompt("ingrese el numero a factorear"));

var total = 1;

for (var i = 1; i <= num; i++){

total = total * i;
}
 alert (`el factorial del numero ingresado ${num} es : ${total}`);