import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  final void Function() reiniciarQuestionario;

  const Resultado({
    Key? key,
    required this.pontuacao,
    required this.reiniciarQuestionario,
  }) : super(key: key);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            '$frase !! \n-- nota: $pontuacao !!',
            style: TextStyle(fontSize: 25),
          ),
        ),
        ElevatedButton(
          child: Text('Reiniciar ?'),
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
