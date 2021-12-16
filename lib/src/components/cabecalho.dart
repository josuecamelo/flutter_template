import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  final textoTitulo = TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w400
  );
  final textoSubtitulo = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text("O que deseja Comer?", style: textoTitulo,),
            Text("Temos diversas opções", style: textoSubtitulo,)
          ],
        ),
        Icon(Icons.notifications)
      ],
    );
  }
}
