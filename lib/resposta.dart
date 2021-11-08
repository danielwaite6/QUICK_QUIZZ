import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textButton;
  final void Function() onTap;

  const Resposta({
    Key? key,
    required this.textButton,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(textButton),
        onPressed: onTap,
      ),
    );
  }
}
