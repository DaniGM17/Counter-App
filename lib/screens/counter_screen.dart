import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.pink,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 5.5,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Número de taps:',
            style: estiloTexto,
          ),
          Text(
            '$contador',
            style: estiloTexto,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => setState(() => contador--),
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => setState(() => contador=0),
            child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () =>  setState(() =>contador++),
            child: const Icon(Icons.exposure_plus_1),
          ),
        ],
      ),
    );
  }
}
