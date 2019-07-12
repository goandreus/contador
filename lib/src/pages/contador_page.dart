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
        floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
            SizedBox(width: 30.0,),
            FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: null),
            Expanded(child: SizedBox(width: 5.0,)),
            FloatingActionButton(child: Icon(Icons.remove), onPressed: null),
            SizedBox(width: 5.0,),
            FloatingActionButton(child: Icon(Icons.add), onPressed: null),
      ],
      );
    
  }
}