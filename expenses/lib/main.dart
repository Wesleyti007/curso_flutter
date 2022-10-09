
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {

Widget build(BuildContext context){
  return MaterialApp(
    home: MyHome()
  );
}
}

class MyHome extends StatelessWidget {

Widget build(BuildContext context){
  return Scaffold(
   appBar: AppBar( title: Text('Despesas Pessoais'),
   ),
   body: Column(children: <Widget>[
    Container(
      width: double.infinity,
      child: Card(
        color: Colors.blue,
        child: Text('Grafico'),
        elevation: 5,
      ),
    ),
    Card(
      child: Text('Lista de transações'),
    )

   ]),
  );
}
}