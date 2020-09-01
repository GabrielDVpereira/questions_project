import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var __pontuacaoTotal = 0;
  final _perguntas = const [
    {
      "texto": 'Qual a sua cor favorita?',
      "respostas": [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 2}
      ]
    },
    {
      "texto": 'Qual é seu animal favorito?',
      "respostas": [
        {'texto': 'Macaco', "pontuacao": 10},
        {'texto': 'Cobra', "pontuacao": 8},
        {'texto': 'Gato', "pontuacao": 5},
        {'texto': 'Cachorro', "pontuacao": 1}
      ]
    },
    {
      "texto": 'Qual é seu instrutor favorito?',
      "respostas": [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 9},
        {'texto': 'Pedro', 'pontuacao': 7},
        {'texto': 'Marcio', 'pontuacao': 2},
      ]
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        __pontuacaoTotal += pontuacao;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas"),
            ),
            body: temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    responder: _responder)
                : Resultado(__pontuacaoTotal)));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
