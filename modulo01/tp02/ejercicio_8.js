function generar (min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor (Math.random() * (1 + max - min) + min);
}
for ( i = 0; i < 100; i++) {
    document.write (generar(0 , 100));
}
