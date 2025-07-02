import 'package:dart_basics/dart_basics.dart' as dart_basics;

/*void main(List<String> arguments) {
  var name = "nightwalker03";
  var age = 19;
  var boolean = true;
  var example = 41.3;
  print(name);
} */

void main(List<String> arguments){

  //variables de cadena de texto
  String name = "Nightwalker03";
  int age = 19;
  String fullText = "Soy $name y tengo $age";
  print(fullText);
  //tipos fijos
  // final tiempo de ejecucion
  // const tiempo de compilacion

  String toNumber = "31";
  int numberOK = int.parse(toNumber);
  print("El numero es $numberOK");

  int numberToString = 56;
  String stringOK = numberToString.toString();
  print(stringOK);

  String toDouble = "543.23";
  double doubleOK = double.parse(toDouble);
  print(doubleOK);


  // operaciones matematicas
  int precio = 1500;
  double descuento = 1150 * 0.75;
  bool resultado = precio >= descuento;
  if (resultado) {
  print("Puedes comprarte el objeto");
  } else {
    print("Eres pobre");
  }
}

/*
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Samuel0322M/dartk.git
git push -u origin main
*/ 