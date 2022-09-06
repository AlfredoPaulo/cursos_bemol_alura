
void main() {

  String nome = "Maça";
  double peso = 100.0;
  String cor = "vermelha";
  String sabor = "suave";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);


Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
Fruta fruta02 = Fruta('uva', 100, 'roxa', 'doce', 20);

print(fruta01.nome);
print(fruta01);
print(fruta02);

fruta01.estaMadura(30);
fruta02.estaMadura(60);

print(fruta02.estaMadura(50));


}

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});


  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua ${nome} foi colhida  a ${diasDesdeColheita} dias , e precisa de ${diasParaMadura} para poder comer.'
        'Ela está madura ? ${isMadura}');
  }


}

//Posicionais Obrigatórios
//Nomeados Opcionais
//Parâmetros "Padrão"
//Modificador "required"


int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFalta =  diasParaMadura - dias;
  return quantosDiasFalta;
}

mostrarMadura(String nome , int dias,  {String? cor}){
  if(dias >= 30){
    print('A ${nome} está madura.');
  }else{
    print('A ${nome} não está madura.');
  }

  if(cor != null){
    print('A ${nome} é ${cor}.');
  }

}


bool funcEstaMadura(int dias){
  if(dias>= 30){
    return true;
  }

  return false;

}
