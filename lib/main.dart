import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual é a sua cor favorita',
    'Qual o seu animal favorito'
  ];

  PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(0)),
            const ElevatedButton(onPressed: null, child: Text('Resposta 1')),
            const ElevatedButton(onPressed: null, child: Text('Resposta 2')),
            const ElevatedButton(onPressed: null, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
