const texto1 = "Olá , mundo !";
const texto2 = 'Olá, mundo !';
const senha = "senhaSuperSegura4567";
const StringDeNumeros = '34567';

const citacao = 'Meu nome é ';
const meuNome = "Alfredo"

console.log(citacao)

//concatenação 

console.log(citacao + meuNome)

const cifrao = '\u0024'
const aMaiusculo = '\u0041'
const tique = '\u2705'
const hiragana = '\u3041'

console.log(cifrao)
console.log(aMaiusculo)
console.log(tique)
console.log(hiragana)


const cidade = "belo horizonte";
const input = "Belo Horizonte";

console.log(cidade === input); // false



const inputMinusculo = input.toLowerCase();

console.log(inputMinusculo)

console.log(cidade === inputMinusculo); // true

const senha1 = "minha"
console.log(senha1.length) // 13 caracteres


//template string OU template literal