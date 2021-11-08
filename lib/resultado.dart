import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado({Key? key, required this.pontuacao}) : super(key: key);

  String get frase {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bueno';
    } else if (pontuacao < 16) {
      return 'Very Impressionant !!!';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$frase !! -- nota: $pontuacao !!',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
