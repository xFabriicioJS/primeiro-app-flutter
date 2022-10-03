import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './questionario.dart';

class Resultado extends StatelessWidget {
  String texto = '';

  Resultado(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(texto),
    );
  }
}
