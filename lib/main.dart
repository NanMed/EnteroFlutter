import 'dart:math';

import 'package:flutter/material.dart';

class _HelloState extends State<HelloStateful>{
  int variable_estado = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hope Starwars Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado: ",
              style: TextStyle(fontSize: 28, color: Colors.deepPurpleAccent),),
            Text('$variable_estado',
              style: TextStyle(fontSize: 40, color: Colors.deepOrange),)
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }

  Widget _crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(
          width: 25,
        ),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_zero),
        // Boton para incrementar de 1 en 1
        SizedBox(
          width: 25,
        ),
        FloatingActionButton(child: Icon(Icons.exposure_plus_1_rounded), onPressed: funcion_incremento),
        // Boton para decrementar de 1 en 1
        SizedBox(
          width: 25,
        ),
        FloatingActionButton(child: Icon(Icons.exposure_minus_1_rounded), onPressed: funcion_decremento),
        // Boton para incremento aleatorio
        SizedBox(
          width: 25,
        ),
        FloatingActionButton(child: Icon(Icons.autorenew_sharp), onPressed: funcion_random),
        // Boton para regresar a -1
        SizedBox(
          width: 25,
        ),
        FloatingActionButton(child: Icon(Icons.exposure_minus_1_rounded), onPressed: funcion_regresar_estado)
      ],
    );
  }

  void funcion_zero(){
    setState(() {
      variable_estado = 0;
    });
  }

  void funcion_incremento(){
    setState(() {
      variable_estado += 1;
    });
  }

  void funcion_decremento(){
    setState(() {
      variable_estado -= 1;
    });
  }

  void funcion_random(){
    setState(() {
      variable_estado += Random.secure().nextInt(10);
    });
  }

  void funcion_regresar_estado(){
    setState(() {
      variable_estado = - 1;
    });
  }
}

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HelloState();
  }
}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.amber,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
            "Flutter rulkes",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white70,
              fontFamily: 'Arial'
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: "Hope: starwars app",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: HelloStateful(),
    ),
  ));
}
