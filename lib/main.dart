import 'package:flutter/material.dart';
import 'package:hola_mundo/pantalla_amigos.dart';

void main() {
  runApp(const Aplicacion());
}

class Aplicacion extends StatelessWidget {
  const Aplicacion({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 183, 79, 58)),
        useMaterial3: true,
      ),
      home: const PantallaAmigos(title: "Mis amigos"),
    );
  }
}
