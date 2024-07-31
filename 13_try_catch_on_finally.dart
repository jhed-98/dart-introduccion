void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://');
    print('éxito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception : $err');
  } catch (err) {
    print('OOP!! algo terible pasó: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

//Si se coloca async siempre debe de tener un Future -> coloca el codigo en simcrono y secuencial
//Solo se usa en funciones asincronos
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
  // throw 'Error en la peticón';
  // return 'Tenemos un valor de la petición';
}
