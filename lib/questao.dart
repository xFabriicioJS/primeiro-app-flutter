import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  String texto = '';

  //construtor simplificado
  Questao(this.texto);

  //construtor tradicional
  // Questao(texto){
  //   this.texto = texto;
  // }

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
