import 'package:flutter/material.dart';

class ReusableChild extends StatelessWidget {
  const ReusableChild(this.icono, this.texto);

  final IconData icono;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icono,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          texto,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
