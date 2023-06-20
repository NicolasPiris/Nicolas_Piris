function promedio(Notas) {
    let contador = 0;
    let sumaNotas = 0;
    let promedio;
    for (const nota of Notas) {
        contador++; 
        sumaNotas = sumaNotas + nota; 
    }
    promedio = sumaNotas / contador; 

    if (promedio>8) {
        document.write("Sobresaliente");
    }else if(promedio > 6 && promedio <=8){
        document.write("Aprobado");
    }else{
        document.write("Reprobado"); 
    }
}

function cargaNotas(){
    let cantidad = parseInt(prompt("ingrese cuantas notas desea cargar"));
    let notas = [];
    for (let index = 0; index < cantidad; index++) {
        let notaIngresada =parseFloat(prompt(`ingrese nota numero ${(index+1)}`));
        while (notaIngresada < 0 || notaIngresada>10){
            notaIngresada = parseFloat(prompt("ingrese un numero del 0 al 10")); 
        }
        notas.push(notaIngresada);        
    } 
    return notas;
}

let notas = cargaNotas();
promedio(notas);