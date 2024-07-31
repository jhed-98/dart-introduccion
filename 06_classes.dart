void main() {
  final Hero wolverine = Hero(name: "Logan", power: "Regenearción");
  print(wolverine);
  print(wolverine.toString());

  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

//Contructor v1
//   Hero(String pName, String pPower)
//       : name = pName,
//         power = pPower;

//Contructor v2 -> más flexibilidad
  Hero({required this.name, this.power = "Sin poder"});

  @override
  String toString() {
    return '$name - $power';
  }
}
