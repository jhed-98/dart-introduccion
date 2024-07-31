void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> bilities = ['impostor'];
  final sprites = <String>['pikachu/front.png', 'pikachu/bg.png'];

//evitar lo maximo posible dynamic
//dynamic == null

  dynamic erroMessage = 'Hola';
  erroMessage = true;
  erroMessage = [1, 2, 3, 4, 5, 6];
  erroMessage = {1, 2, 3, 4, 5, 6};
  erroMessage = () => true;
  erroMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $bilities
  $sprites
  $erroMessage
""");
}
