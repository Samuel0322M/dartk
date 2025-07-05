import 'dart:io';

void main(List<String> arguments) {
  exercise5();
}

/*
----------------------------------------
|                                      | 
|                                      |
|              Ejercicios              |
|                                      |
|                                      |
----------------------------------------
*/

void exercise5() {
  List<String> palabras = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];
  int dart = 0;
  int flutter = 0;
  int codigo = 0;
  int movil = 0;
  Map<String, int> frecuenciaMap = {};

  for (var element in palabras) {
    if (element.contains("dart")) {
      dart++;
    } else if (element.contains("flutter")) {
      flutter++;
    } else if (element.contains("codigo")) {
      codigo++;
    } else if (element.contains("movil")) {
      movil++;
    }
  }

  frecuenciaMap.addAll({"dart": dart, "flutter" :flutter, "codigo" : codigo, "movil" : movil});
  print(frecuenciaMap);
}

void exercise4() {
  List<String> palabras = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];

  Set<String> setPalabras = {};

  Set<String> result = {};

  result.addAll(palabras);

  print("este es el result $result");

  for (var element in palabras) {
    setPalabras.add(element);
  }
  print("este es el for $setPalabras");
}

void exercise3() {
  List<int> numerosPares = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
  ];

  int suma = 0;

  for (int i = 0; i < numerosPares.length; i++) {
    double esPar = numerosPares[i] % 2;
    bool resultado = esPar == 0;
    if (resultado) {
      suma += numerosPares[i];
    }
  }
  print(suma);
}

/*
----------------------------------------
|                                      | 
|                                      |
|              Bucles                  |
|                                      |
|                                      |
----------------------------------------
*/

void forEach() {
  List<int> listNumbers = [1, 2, 3, 45, 6, 5, 6, 3, 622];

  listNumbers.forEach(print);

  Map<String, int> mapNumbers = {
    "Nacimiento": 2005,
    "Aniversario": 22,
    "favNumber": 03,
  };

  mapNumbers.forEach((key, value) {
    print("el valor de key es $key y el value es $value");
  });
}

void listLoop() {
  List<int> listNumbers = [1, 2, 3, 45, 6, 5, 6, 3, 622];
  // el for sirve para saber la pocision cuando se recorre la lista
  for (int i = 0; i < listNumbers.length; i++) {
    //print("soy i $i");
    print("soy la lista en for${listNumbers[i]}");
  }
  // el for in es mas sencillo y sirve para recorrer una lista sin necesidad de conocer el indice o posicion en que va
  for (var element in listNumbers) {
    print("soy la lista en for in $element");
  }
}

void setLoop() {
  Set<int> setNumbers = {34, 53, 54, 75, 43, 44, 65};
  /* No se puede recorre un set con for ya que este necesita saber cual es el indice del array o lista
    for (int i = 0; i < setNumbers.length; i++) {
    print("El valor de la lista es ${setNumbers[i]}");
  }
  */

  //para recorrer un arreglo con Set se debe usar el for in ya que este no valida el indice del arreglo
  for (var number in setNumbers) {
    print("Soy el set $number");
  }
}

void mapLoop() {
  Map<String, int> mapNumbers = {
    "Nacimiento": 2005,
    "Aniversario": 22,
    "favNumber": 03,
  };

  // en el map como tenemos clave y valor existen 3 formas de acceder al valor si necesitamos la calve y valor

  // clave y valor

  for (var element in mapNumbers.entries) {
    print(
      "El valor de la clave es ${element.key} y el valor del valor :v es ${element.value}",
    );
  }

  //solo clave

  for (var clave in mapNumbers.keys) {
    print("el valor de la clave es $clave");
  }

  // solo valor

  for (var valor in mapNumbers.values) {
    print("El valor es $valor");
  }
}

/*
----------------------------------------
|                                      | 
|                                      |
|              Listas                  |
|                                      |
|                                      |
----------------------------------------
*/
void mapExample() {
  //Map es una coleccion como una lista o un set pero con calve y valor lo que significa que no voy a acceder a un dato por la pocision si no por el valor
  Map<int, String> people = {1: "Samuel", 2: "Juan", 3: "Santiago"};
  //en este caso existe un arreglo con la clave numeria (1, 2, 3) y el valor que trae es el nombre
  print(people[1]);
  //para poder acceder a un valor se puede hacer con la clave y sobreescribirlo
  people[2] = "Alejandra";
  // existen varias formas (solo conozco 2 :v) para añadir valores a map
  people[4] = "Charizard";
  people.addAll({5: "Aris", 6: "Santiago"});
  //para eliminar es sencillo nombre del map y la funcion revome
  //people.remove(1);
  //existe tambien forma de saber si existe la llave o el valor en un map con el nombre de la variable y la funcion eso nos devuelve un booleano
  people.containsKey(1);
  people.containsValue("Alejandra");
  bool existeKey1 = people.containsKey(1);
  if (existeKey1) {
    print("Existe la key 1 ${people[1]}");
  } else {
    print("No existe la key 1");
  }

  print(people[2]);
  print(people);
}

void listExample() {
  List<int> numeros = [1, 4, 6, 78, 67];
  print(numeros);
  List<String> names = ["Aris", "Pepe", "Manolo"];
  var names2 = ["Juan", "Ana", "Sonic"];
  //names.addAll sirve para añadir arrays dentro de otra array
  names.addAll(names2);
  //names.add sirve para guardar un string de una pocision concreta de un array
  names.add(names2[2]);
  //names.clear() sirve para limpiar una array
  print(names[2]);

  print(names);
}

void setsExamples() {
  //los sets a diferencias de las listas se crean con corcehtes y no con llaves, los sets no pueden tener valores repetidos
  /* 
  Set es una coleccion desordenada de elementos unicos, es decir:
  -No permite elementos duplicados
  - no matneien un orden como una lista
  - no puedes accceder directamente con in indice como lista[0]
  */
  Set<String> names = {"Aris", "Pepe", "Aris"};
  //Aris ya se encuentra en names por lo que ya se encuenta
  names.add("Aris");
  names.add(
    "aris",
  ); //aris es distinto a Aris por la a minuscula por lo que Set lo que hara es validar si === es exactamente igual
  names.add("Juan");
  bool result = names.contains("Samuel");
  String invitado = names.toList()[3];

  if (result) {
    print("$invitado eres invitado a la fiesta");
  } else {
    print("No eres invitado a la fiesta");
  }
  print(names);

  //una paractica para poder evaluar si una lista tiene valores repetidos es pasarla a un Set
  List<String> newNames = [
    "Aris",
    "Aris",
    "Juan",
    "Alejandra",
    "Samuel",
    "Samuel",
  ];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
}

void greetings(String name, int age, String mes) {
  String fullText = "Soy $name y tengo $age estoy en el mes de $mes";

  print(fullText);
}

int convertToNumber(String toNumber) {
  int numberOK = int.parse(toNumber);
  return numberOK;
}

double convertToDouble(String toDouble) {
  double doubleOK = double.parse(toDouble);
  return doubleOK;
}

String convertToString(int numberToString) {
  String stringOK = numberToString.toString();
  return stringOK;
}

void canBuy(int presupuesto, int precio) {
  double descuento = precio * 0.75;
  bool resultado = presupuesto >= descuento;
  if (resultado) {
    print("Puedes comprarte el objeto");
  } else {
    print("Eres pobre");
  }
}

void exercise1(String date) {
  int fechaNacimiento = int.parse(date);
  int today = 2025;
  int edad = today - fechaNacimiento;
  print("Tienes $edad años");
}

void exercise2(int cuenta, double propina, int numeroPersonas) {
  double totalCuenta = cuenta + (cuenta * propina);
  double cuentaPersonal = totalCuenta / numeroPersonas;
  print(
    "el valor a pagar en total es $totalCuenta el valor a pagar por persona $cuentaPersonal",
  );
}

String mesActual(int mes) {
  switch (mes) {
    case 1:
      return "Enero";

    case 2:
      return "Febrero";

    case 3:
      return "Marzo";

    case 4:
      return "Abril";

    case 5:
      return "Mayo";

    case 6:
      return "Junio";

    case 7:
      return "Julio";

    case 8:
      return "Agosto";

    case 9:
      return "Septiembre";

    case 10:
      return "Octubre";

    case 11:
      return "Noviembre";

    case 12:
      return "Diciembre";

    default:
      return "el mes no es valido";
  }
}
