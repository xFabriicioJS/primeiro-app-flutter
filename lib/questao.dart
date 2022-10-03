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
    return Container(
      //o dobro do infinity
      width: double.infinity,
      //Margin em todas as laterais de 10
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
