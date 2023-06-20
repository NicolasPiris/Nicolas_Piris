var valores = [true, false, 2, "hola", "mundo", 3, "char"];
let ordenar = ["mundo", "hola", "char"];
ordenar.sort()
let mayor = "";
for (const dato of valores) {
    if (dato.length > mayor.length) {
        mayor = dato;

    }
  }
  document.write(`el texto mas largo es ${mayor}<br/>`);
  document.write(ordenar);
  
  
 
 