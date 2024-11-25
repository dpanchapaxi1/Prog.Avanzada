import 'package:flutter/material.dart';

class Ejercicio11 extends StatelessWidget {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 11')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Diseñe un algoritmo representándolo en DF y Pseudocódigo que permita ingresar tres números'
                  ' y muestre cual es el mayor y  cual es el menor. El algoritmo de que dos o tres de los'
        ' números  puedan ser iguales.',
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
            TextField(
              controller: num3Controller,
              decoration: InputDecoration(labelText: 'Ingrese el tercer número'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                final num1 = int.tryParse(num1Controller.text) ?? 0;
                final num2 = int.tryParse(num2Controller.text) ?? 0;
                final num3 = int.tryParse(num3Controller.text) ?? 0;

                final mayor = [num1, num2, num3].reduce((a, b) => a > b ? a : b);
                final menor = [num1, num2, num3].reduce((a, b) => a < b ? a : b);

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('Mayor: $mayor\nMenor: $menor'),
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
