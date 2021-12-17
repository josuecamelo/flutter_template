import 'package:flutter/material.dart';
import 'package:flutter_template/src/components/buscar.dart';
import 'package:flutter_template/src/components/cabecalho.dart';
import 'package:flutter_template/src/components/categorias.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
        children: [
          Cabecalho(),
          AreaCategoria(),
          Buscar(),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
