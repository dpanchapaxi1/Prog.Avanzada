import 'package:flutter/material.dart';

class Ejercicio10 extends StatelessWidget {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 10')
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Diseñe un algoritmo representándolo en DF y Pseudocódigo que permita ingresar dos números y muestre el mayor de ellos.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(labelText: 'Ingrese el primer número'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(labelText: 'Ingrese el segundo número'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                final num1 = int.tryParse(num1Controller.text) ?? 0;
                final num2 = int.tryParse(num2Controller.text) ?? 0;
                final mayor = num1 > num2 ? num1 : num2;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('El mayor es: $mayor'),
                  ),
                );
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
