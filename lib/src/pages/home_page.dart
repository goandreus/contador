import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  final estiloTexto = TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text('Hola mundo', style: estiloTexto),
           Text('$conteo',style: estiloTexto)
        ],)
        ),
        //Cambiar ubicacion
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('Hola Mundo');
          },
        ),
    );
  }
}