void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('Fin del programa');
}

//Si se coloca async siempre debe de tener un Future -> coloca el codigo en simcrono y secuencial
//Solo se usa en funciones asincronos
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticón';
  // return 'Tenemos un valor de la petición';
}
