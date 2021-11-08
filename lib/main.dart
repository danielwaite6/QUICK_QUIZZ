import 'package:flutter/material.dart';
import 'package:quiz/resultado.dart';
import 'package:quiz/questionario.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 9},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito ?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 1},
        {'texto': 'Cobra', 'pontuacao': 4},
        {'texto': 'Elefante', 'pontuacao': 6},
        {'texto': 'Zebra', 'pontuacao': 9},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito ?',
      'respostas': [
        {'texto': 'Dan', 'pontuacao': 3},
        {'texto': 'Brownie', 'pontuacao': 2},
        {'texto': 'Mustafa', 'pontuacao': 7},
        {'texto': 'Manfred', 'pontuacao': 8},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    //print(_pontuacaoTotal);
  }

  @override
  Widget build(BuildContext context) {
    /*List<Widget> widgets = respostas
        .map((t) => Resposta(textButton: t, onTap: _responder))
        .toList();*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Banana'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: _perguntas,
                responder: _responder,
              )
            : Resultado(pontuacao: _pontuacaoTotal),
      ),
    );
  }
}
