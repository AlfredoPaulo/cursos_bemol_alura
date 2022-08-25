function soma(num1, num2){
    return num1 + num2;
}

console.log(soma(1,2))

function nomeIdade(nome , idade){
    return `Meu nome é ${nome} e minha idade é ${idade}`
}

//console.log(nomeIdade("Alfredo",20))

function multiplica(num1=1, num2=1){
    return num1 * num2;
}

console.log(multiplica(soma(4,5),soma(3,3)))