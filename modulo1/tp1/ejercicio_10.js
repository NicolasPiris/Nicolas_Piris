let mes = ["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"];
let num = prompt("ingrese un valor entre 1 y 12");
if (parseInt(num) >= 1 && parseInt (num) <= 12) {
    document.write("el mes correspondiente es:" + mes[num-1] );
} else {
    num = prompt("ingrese otro valor");
}