
const  tocarSom = (contador) =>{
    document.querySelector(contador).play()

}


const listaDeTeclas = document.querySelectorAll('.tecla')



//suna
let contador = 0
while ( contador < listaDeTeclas.length){
    listaDeTeclas[contador].onclick = tocarSom(contador);
    contador+=1;

}





