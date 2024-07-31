void main() {
  final numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    6,
    6,
    7,
    7,
    7,
    7,
    7,
    8,
    8,
    9,
    9,
    9,
    9,
    9,
    10
  ];

  print('List original: $numbers');
  print('List original: ${numbers.toSet().toList()}');
  print('List original: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}'); //Retorna otro formato ()

  final reversedNumbers = numbers.reversed;
  print('Interable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); //Valores unicos

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; //true
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet().toList()}');
}
