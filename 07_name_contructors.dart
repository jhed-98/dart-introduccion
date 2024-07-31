void main() {
  final Map<String, dynamic> rawJson = {
    'isAlive': true,
    'name': "Hulk",
    'power': "fuerza",
  };

//V1
//   final iroman = Hero(
//     isAlive: false,
//     name: "Tony Stark",
//     power: "money",
//   );

//V2 con JSON
//   final iroman = Hero(
//     isAlive: rawJson['isAlive'] ?? false,
//     name: "Tony Stark",
//     power: "money",
//   );

//V3 con contructor con nombre
  final iroman = Hero.fromJson(rawJson);

  print(iroman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  //Indica un contructor
  Hero({required this.name, required this.power, required this.isAlive});
  //Contructor con nombre
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'NOpe'}';
  }
}
