
function info(cadena) {
    var resultado = "la cadena\""+cadena+"\"";
    if(cadena ==cadena.toUpperCase()){
        resultado="esta formada por mayusculas"
    } 
    else if (cadena === cadena.toLowerCase()){
        resultado="esta formada por minusculas"
    }
    else {
        resultado= "esta formado por mayusculas y minusculas"
    }
    return resultado;
}
cadena = prompt ("ingrese palabra:");
alert(info(`${cadena}`));