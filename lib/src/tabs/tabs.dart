import 'package:flutter/material.dart';
import 'package:flutter_template/src/pages/TelaInicial.dart';
import 'package:flutter_template/src/pages/carrinhoPage.dart';
import 'package:flutter_template/src/pages/categoriasPage.dart';
import 'package:flutter_template/src/pages/produtosPage.dart';


class Tabs extends StatefulWidget{
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs>{
  int abaAtual = 0;
  late TelaInicial telaInicial;
  late CarrinhoPage carrinho;
  late ProdutosPage produtos;
  late CategoriasPage categorias;

  late List<Widget> pages;
  late Widget pagAtual;

  @override
  void initState(){
    telaInicial = TelaInicial();
    carrinho = CarrinhoPage();
    produtos = ProdutosPage();
    categorias = CategoriasPage();

    pages = [telaInicial, carrinho, produtos, categorias];
    pagAtual = telaInicial;
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            title:Text(
              abaAtual == 0
                  ? "Página Inicial"
                  : abaAtual == 1
                  ? "Carrinho"
                  : abaAtual == 2 ? "Produtos" : "Categorias",
              style:TextStyle(
                  color:Colors.white,
                  fontSize:15.0,
                  fontWeight: FontWeight.bold
              ),

            ),
            centerTitle: true,

            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    // size: 30.0,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],

          ),


          //COLOCAR DRAWER
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: abaAtual,
            onTap: (index) {
              setState(() {
                abaAtual = index;
                pagAtual = pages[index];
              });
            },
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                title: Text("Carrinho"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.photo_library,
                ),
                title: Text("Produtos"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                title: Text("Categoria"),
              ),
            ],
          ),


          //TRAZER O CONTEÚDO DA PÁGINA INICIAL HOME
          body:pagAtual,
        )
    );
  }
}