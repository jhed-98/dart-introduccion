void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Edward', message: 'Hi,'));
}

String greetEveryone() => "Hello everyone!";

int addTwoNumbers(int a, int b) => a + b;

int addTwoOpcionalNumbers(int a, [int b = 0]) {
  //opcional el parametro b [int? b], el parentesis al parece solo es para digitos
  // b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name';
}
