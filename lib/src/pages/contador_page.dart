import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);



  _ContadorPageState createState() => _ContadorPageState();
}
  final _estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 0;

class _ContadorPageState extends State<ContadorPage> {
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
           Text('Hola mundo', style: _estiloTexto),
           Text('$_conteo',style: _estiloTexto)
        ],)
        ),
        //Cambiar ubicacion
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('Hola Mundo');
            _conteo = _conteo + 1;


            //Redibuja todo el widget
            setState(() {
              
            });
          },
        ),
    );
  }
}