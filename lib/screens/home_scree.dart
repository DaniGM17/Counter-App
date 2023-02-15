import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador=0;
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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: (){
            contador++;
            print('Presionaste el botón');
            print(contador);
          },
          child: const Icon(Icons.add)),
    );
  }
}
