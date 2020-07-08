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
      home: PaginaLogin(),
      //theme: Theme(data: null, child: null),
    );
  }

}

