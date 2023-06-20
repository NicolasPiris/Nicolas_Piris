function diasMes () {
    let mes = prompt ("escriba el numero del mes que quiera averiguar: ");
    switch (mes){
    case `1`:
    case `3`:
    case `5`:
   case `7`:
   case `8`:
   case `10`:
   case `12`:
    document.write(`<h1>El mes ${mes} tiene 31 dias.</h1>`);
    break;
    case `4`:
     case `6`:
    case `9`:
    case `11`:        
    document.write(`<h1> El mes ${mes} tiene 30 dias.</h1>`);
    break;
    case `2`:
        document.write(`<h1> El mes ${mes} tiene 29 dias.</h1>`);
    break;
    default:
        document.write(`<h1> ingresar numeros del 1 al 12 </h1>`);
    }
}
diasMes();
