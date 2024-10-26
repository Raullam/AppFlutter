import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estil = TextStyle(fontSize: 24);
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _reiniciar() {
    setState(() {
      _contador = 0;
    });
  }

  Widget _crearBotons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 15.0),
        FloatingActionButton(
            onPressed: _reiniciar, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _decrementar,
          child: Icon(Icons.remove),
          backgroundColor: Colors.redAccent,
        ),
        SizedBox(width: 15.0),
        FloatingActionButton(
          onPressed: _incrementar,
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
        ),
        SizedBox(width: 15.0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador amb Stateful'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre de clicks:', style: _estil),
            Text('$_contador', style: _estil),
          ],
        ),
      ),
      floatingActionButton: _crearBotons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
