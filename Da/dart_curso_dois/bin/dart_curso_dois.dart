
void main() {

  String nome = "Maça";
  double peso = 100.0;
  String cor = "vermelha";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);

  mostrarMadura(nome, diasDesdeColheita, cor: cor);

  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);

  print('Faltam ${quantosDias} dias para ficar madura');



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
