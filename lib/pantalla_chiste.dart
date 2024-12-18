import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hola_mundo/chiste.dart';
import 'package:http/http.dart' as http;

class PantallaChiste extends StatefulWidget {
  const PantallaChiste({super.key});

  @override
  State<PantallaChiste> createState() => _PantallaChisteState();
}

class _PantallaChisteState extends State<PantallaChiste> {
  String textoChiste = "";

  @override
  void initState() {
    descargarChiste();
    super.initState();
  }

  void descargarChiste() async {
    final url = Uri.parse("https://official-joke-api.appspot.com/random_joke");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      Chiste chiste = Chiste.fromJson(jsonDecode(json));
      textoChiste = "${chiste.inicio} \n\n ${chiste.gracia}";
    } else {
      textoChiste = "Error al cargar el chiste. Ja ja";
    }
    setState(() {}); // Actualiza la Interfaz de Usuario
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: textoChiste.isEmpty
              ? const CircularProgressIndicator()
              : Text(textoChiste,
                  style:
                      const TextStyle(fontSize: 30, color: Colors.deepOrange))),
    );
  }
}
