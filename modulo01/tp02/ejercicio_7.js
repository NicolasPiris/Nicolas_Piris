function revstring(str){
    let mensaje ="";
    for (let i = str.length - 1; i >= 0; i--){
        mensaje = mensaje + str.charAt(i);
    }
    return mensaje;
}
mensaje = prompt("escriba:");
alert(revstring(`${mensaje}`));

