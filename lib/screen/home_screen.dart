import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle estilo = TextStyle(fontSize: 40);
    int contador = 15;

    return Scaffold(
      appBar: AppBar(
        title: Text("Hola Borrach@s"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'FANY ES BIEN HUMILLADORA CON SU M.2 '
              'NUMEROS DE  CLICS  15',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '$contador'
              'Wiget Hijo 2',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Click');
        },
        child: const Icon(Icons.account_balance_outlined),
      ),
    );
    return Container();
  }
}
