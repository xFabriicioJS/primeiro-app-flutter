import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String texto = '';
  //construtor
  Botao(this.texto, this.quandoSelecionado);
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: this.quandoSelecionado,
        child: Text(this.texto),
        style: ElevatedButton.styleFrom(onPrimary: Colors.blue),
      ),
    );
  }
}
