import 'package:flutter/material.dart';
import 'package:flutter_template/src/tabs/tabs.dart';
import 'pages/TelaInicial.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicativo",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Tabs(),
    );
  }
}

