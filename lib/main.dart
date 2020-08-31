import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual é seu animal favorito?'
    ];

    return new MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: Column(
        children: [
          Questao(perguntas[perguntaSelecionada]),
          RaisedButton(
            child: Text('Resposta 1'),
            onPressed: _responder,
          ),
          RaisedButton(
            child: Text('Resposta 2'),
            onPressed: _responder,
          ),
          RaisedButton(
            child: Text('Resposta 3'),
            onPressed: _responder,
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
