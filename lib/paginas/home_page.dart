import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Encabezado
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              "Notas",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          // Lista de notas
          CupertinoListSection.insetGrouped(
            children: [
              CupertinoListTile(title: Text("Nota 1")),
              CupertinoListTile(title: Text("Nota 2")),
            ],
          ),
        ],
      ),
    );
  }
}
