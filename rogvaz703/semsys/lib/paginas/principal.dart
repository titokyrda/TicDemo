import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PaginaPrincipal extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _dibAppBar(),
      body: _dibBody(),
    );
  }

  AppBar _dibAppBar(){
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

  Widget _dibBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child:Image.asset('assets/icon/icono_carta.jpg'),
          flex: 2,
        ),
        Expanded(
          //fit: BoxFit.fitHeight,
          child: Column(
            children: <Widget>[
              Text('Registra tu Correo Electrónico @msev',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'NeoSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
              ),
                      
              Text('es necesario usar la cuenta asignada por la Secretaría de Educación de Veracruz',
                  textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'NeoSans',
                      fontSize: 15.0,
                    ),
              ),
              
            ]
          )
        ),
        Expanded(
           //fit: BoxFit.none,
           child: IngresaCorreo(),
        ),
      ],
     
    );
  }
}

class IngresaCorreo extends StatefulWidget {
  IngresaCorreo({Key key}) : super(key: key);

  @override
  _IngresaCorreoState createState() => _IngresaCorreoState();
}

class _IngresaCorreoState extends State<IngresaCorreo> {
  
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      alignment: Alignment.topCenter,
      child: Form(
        key:  _formkey,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(

                hintText: 'Ingrese su correo',
              ),
              validator: (value){
                if(value.isEmpty){
                  return 'Ingrese su correo';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: (){
                  //Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formkey.currentState.validate()) {
                    // Process data.
                  }
                },
                child: Text('Iniciar'),
              ),
              
            )
          ],
        ),
      ),
    );
  }
}