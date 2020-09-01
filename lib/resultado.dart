import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  Resultado(this.pontuacao);

  String get respostaResultado {
    if (pontuacao < 8) {
      return 'ruim';
    } else if (pontuacao < 12) {
      return "voce é bom";
    } else if (pontuacao <= 22) {
      return "nivel jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      respostaResultado,
      style: TextStyle(fontSize: 28),
    ));
  }
}
