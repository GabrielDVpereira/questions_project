import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() onSelecao;

  Resposta(this.resposta, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(this.resposta),
          onPressed: this.onSelecao,
        ));
  }
}
