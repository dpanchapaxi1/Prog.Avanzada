import 'package:flutter/material.dart';
import 'Pages/ejercicio10.dart'; // Ruta actualizada
import 'Pages/ejercicio11.dart'; // Ruta actualizada
import 'Pages/ejercicio12.dart'; // Ruta actualizada

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicios en Flutter',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: '/',
      routes: {
        '/': (context) => PantallaHome(),
        '/ejercicio10': (context) => Ejercicio10(),
        '/ejercicio11': (context) => Ejercicio11(),
        '/ejercicio12': (context) => Ejercicio12(),
      },
    );
  }
}

class PantallaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Inicio'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Información de la universidad
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'UNIVERSIDAD DE LAS FUERZAS ARMADAS ESPE',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'PROG. AVANZADA. 3846',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'DAYANA ANCHAPAXI',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Espacio entre el texto y los botones

          // Botones para los ejercicios
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/ejercicio10'),
                  child: Text('Ejercicio 10'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/ejercicio11'),
                  child: Text('Ejercicio 11'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/ejercicio12'),
                  child: Text('Ejercicio 12'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
