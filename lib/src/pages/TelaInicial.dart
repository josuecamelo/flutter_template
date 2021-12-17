import 'package:flutter/material.dart';
import 'package:flutter_template/src/components/buscar.dart';
import 'package:flutter_template/src/components/cabecalho.dart';
import 'package:flutter_template/src/components/cardProduto.dart';
import 'package:flutter_template/src/components/categorias.dart';
import 'package:flutter_template/src/models/produtosModel.dart';

class TelaInicial extends StatefulWidget{
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  List<ProdutosModel> _produtos = produtos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding:EdgeInsets.only(left:20.0, top:30.0, right:20.0),
        children: <Widget>[
          Cabecalho(),
          AreaCategoria(),
          Buscar(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Produtos Mais Vendidos",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Precionou' pressed");
                },
                child: Text(
                  "Ver Todos",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _produtos.map(_produtosItens).toList(),
          )
        ],
      ),
    );
  }

  Widget _produtosItens(ProdutosModel produtos){
    return Container(
        margin:EdgeInsets.only(
            bottom:26.0
        ),
        child:CardProduto(
          produtos.id,
          produtos.nome,
          produtos.imagem,
          produtos.categoria,
          produtos.valor,
          produtos.desconto,
          produtos.avaliacoes,
        )
    );
  }

}