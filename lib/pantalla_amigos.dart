import 'package:flutter/material.dart';

class PantallaAmigos extends StatefulWidget {
  const PantallaAmigos({super.key, required this.title});

  final String title;

  @override
  State<PantallaAmigos> createState() => _PantallaAmigosState();
}

class _PantallaAmigosState extends State<PantallaAmigos> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Amigos", style: TextStyle(fontSize: 30, color: Colors.deepOrange))
      ],
    );
  }
}
