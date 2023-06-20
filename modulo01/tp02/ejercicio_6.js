//buenas, queria aclarar que deje este ejercicio echo por consola 
function vocales(str) {
    let vocales =`aeiouAEIOU`;
    let texto ="";
    let vocalescont = 0;
    for (let i = 0 ; i < str.length; i++ ){
        if(vocales.indexOf(str[i]) !== -1) {
            console.log("la primer letra es:" + str[i]);
            vocalescont += i; 
            console.log("esta en la posicion:" + vocalescont) ;
            break
        }
    }
    return vocalescont;
}
texto = prompt ("escriba:");
console.log(vocales(`${texto}`));