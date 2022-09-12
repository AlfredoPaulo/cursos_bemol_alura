void main() {
  String nome = "Maça";
  double peso = 100.0;
  String cor = "vermelha";
  String sabor = "suave";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  Legumes mandioca = Legumes('Macaxeira', 1200, 'marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia = Nozes('Macadâmia', 2, 'rosa', 'doce', 3, 35);
  Citricas limao = Citricas('Limão', 50, 'verde', 'Azedo', 5, 9);

  mandioca.printAlimento();
  banana.printAlimento();
  mandioca.printAlimento();
  mandioca.printAlimento();
  mandioca.cozinhar();
  banana.separarIngrediente();
  mandioca.fazerMassa();
 // macadamia.fazerMassa();
  macadamia.fazerMassa();
 // banana.separarIngrediente();
}

//Posicionais Obrigatórios
//Nomeados Opcionais
//Parâmetros "Padrão"
//Modificador "required"

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFalta = diasParaMadura - dias;
  return quantosDiasFalta;
}

mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print('A ${nome} está madura.');
  } else {
    print('A ${nome} não está madura.');
  }

  if (cor != null) {
    print('A ${nome} é ${cor}.');
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  }

  return false;
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua ${nome} foi colhida  a ${diasDesdeColheita} dias , e precisa de ${diasParaMadura} para poder comer.'
        'Ela está madura ? ${isMadura}');
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void assar() {
    // TODO: implement assar
    print('Colocar no forno');
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
    print('Misturar a fruta com farinha');
  }

  @override
  void separarIngrediente() {
    // TODO: implement separarIngrediente
    print('Catar $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este (a) $nome pesa $peso gramas e é $cor.");
  }
}

class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinha;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinha)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinha) {
      print('Pronto , o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar');
    }
  }


  @override
  void assar(){
    // TODO: implement assar
  }


  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngrediente() {
    // TODO: implement separarIngrediente
  }}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de ${nome}');
    } else {
      print('Não existe refri de ${nome}');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);


}


abstract class Bolo{
  void separarIngrediente();
  void fazerMassa();
  void assar();
}

