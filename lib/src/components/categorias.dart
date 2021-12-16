import 'package:flutter/material.dart';
import 'package:flutter_template/src/components/cardCategorias.dart';
import 'package:flutter_template/src/dados/categoriaDados.dart';
import 'package:flutter_template/src/models/categoriasModel.dart';

class AreaCategoria extends StatelessWidget {
  final List<CategoriaModel> _categorias = categorias;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return CardCategoria(
                _categorias[index].nomeCategoria,
                _categorias[index].imagem,
                _categorias[index].totalProdutos
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: _categorias.length,
        ));
  }
}
