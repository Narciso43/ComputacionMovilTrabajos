import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 12;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle estilo = TextStyle(fontSize: 40);
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTADOR  DE BORACH@S"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '$contador'
              ' No.Borrach@s',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PersonalizacionBotonFlotante(
        //incrementar  sin parentesis indica que no se ejecute
        incremento: incrementar,
        decremento: decrementar,
      ),
    );
    return Container();
  }
}

class PersonalizacionBotonFlotante extends StatelessWidget {
  //creacion de una propiedad  y se puede  guardar  una referencia a una funcion
  //Solo se guarda la funion  sin ejecutarla.

  final Function incremento;
  final Function decremento;
  //ctrl + "."

  const PersonalizacionBotonFlotante(
      {Key? key, required this.incremento, required this.decremento})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          //onPresed:()=> incremento(),
          //En  una linea
          onPressed: () => {incremento()},
          child: const Icon(Icons.add),
        ),
        SizedBox(
          width: 43,
        ),
        FloatingActionButton(
          onPressed: () => {decremento()},
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
