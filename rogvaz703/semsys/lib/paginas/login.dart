import 'package:flutter/material.dart';

class PaginaLogin extends StatefulWidget {
  @override 
  _PaginaLoginState createState() => _PaginaLoginState();
}


class _PaginaLoginState extends State<PaginaLogin> {
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _dipAppBar(),
      body: _dipBody(),     
    );
  }

  AppBar _dipAppBar() {
     return  AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.contain,
            child: Text('SEMSyS',
                  style: TextStyle(
                    fontFamily: 'NeoSans', 
                    fontSize: 30.0,  
                  ),
                textAlign: TextAlign.center,
                ),
          ),
          SizedBox(
            width: 25.0,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              children: <Widget>[
                Text('N',
                      style: TextStyle(
                        fontFamily: 'NeoSans', 
                        fontSize: 15.0,  
                        backgroundColor: Colors.white,
                        foreground: Paint()..color=Colors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  Text('OTICIAS',
                      style: TextStyle(
                        fontFamily: 'NeoSans', 
                        fontSize: 15.0,  
                      ),
                      textAlign: TextAlign.center,
                    ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.red[900],
    );
  }

  Widget _dipBody() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/icon/icono_carta.jpg'),
        Column(
            children: <Widget>[
              Text('Registra tu Correo Electrónico @msev',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: 'NeoSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
              ),      
              Text('es necesario usar la cuenta asignada por la Secretaría de Educación de Veracruz',
                  textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.black45,
                      //fontFamily: 'NeoSans',
                      fontSize: 15.0,
                    ),
              ),
              
            ]
          ),
          Divider(),
        _correoMSEV(),
      ],
     
    );
  }

  Widget _correoMSEV() {
    return TextField(
      //autofocus: true,
      //textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Correo Electronico MSEV',
        labelText: 'Correo Electronico MSEV',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor){
        setState((){
             _email=valor;
        });
      },

    );
  }
  
}