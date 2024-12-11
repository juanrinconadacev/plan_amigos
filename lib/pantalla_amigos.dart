import 'package:flutter/material.dart';

class PantallaAmigos extends StatefulWidget {
  const PantallaAmigos({super.key, required this.title});

  final String title;

  @override
  State<PantallaAmigos> createState() => _PantallaAmigosState();
}

class _PantallaAmigosState extends State<PantallaAmigos> {
  late TextEditingController _campoTextoAmigo;
  var amigos = <String>[];

  @override
  void initState() {
    super.initState();
    _campoTextoAmigo = TextEditingController();
  }

  @override
  void dispose() {
    _campoTextoAmigo.dispose();
    super.dispose();
  }

  void nuevoAmigo() {
    if (_campoTextoAmigo.text.isNotEmpty) {
      amigos.add(_campoTextoAmigo.text);
      _campoTextoAmigo.text = "";
      setState(() {});
    }
    print(amigos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Amigos",
              style: TextStyle(fontSize: 30, color: Colors.deepOrange)),
          Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: _campoTextoAmigo,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nombre de tu amigo..."),
              )),
          TextButton(onPressed: nuevoAmigo, child: const Text("Añadir")),
          ListView.builder(
            itemCount: amigos.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(amigos[index]));
            },
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}
