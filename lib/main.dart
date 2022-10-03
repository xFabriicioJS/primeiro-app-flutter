import 'package:flutter/material.dart';
import 'package:projeto_perguntas/botao.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';

void main(List<String> args) {
  runApp(PerguntaApp());
}

//como se fossem os states dos hooks do react (useState)

class _PerguntasAppState extends State<PerguntaApp> {
  //o nosso state
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita',
      'respotas': ['Preto', 'Branco', 'Azul', 'Vermelho']
    },
    {
      'texto': 'Qual é o seu animal favorito',
      'respotas': ['Cachorro', 'Gato', 'Largato', 'Hamster']
    },
    {
      'texto': 'Qual é o seu instrutor favorito',
      'respotas': ['Maria', 'João', 'Leo', 'Pedro']
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  //método para modificar o state
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
    print(_perguntaSelecionada);
  }

  //método build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Perguntas'),
            ),
            body: temPerguntaSelecionada
                ? Questionario(_perguntas, _perguntaSelecionada, _responder)
                : Resultado('Parabéns!')));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
