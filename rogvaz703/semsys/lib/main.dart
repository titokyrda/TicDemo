import 'package:flutter/material.dart';


import 'package:semsys/paginas/login.dart';

//import 'package:semsys/paginas/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEMSyS Noticias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.redAccent[700]      ,
        accentColor: Colors.redAccent[400],
        fontFamily: 'NeoSans',
      ),
      home: PaginaLogin(),
      //theme: Theme(data: null, child: null),
    );
  }

}

