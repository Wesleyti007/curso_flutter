
import 'package:expenses/models/transaction.dart';
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
  final _transaction = [
    Transaction(
      id: 't1',
      title: 'Novo tenis de corrida',
     value: 354.76,
      date: DateTime.now()
    ),
    Transaction(
      id: 't2',
      title: 'Almoço',
     value: 50.76,
      date: DateTime.now()
    ),
    Transaction(
      id: 't3',
      title: 'Conta de luz',
     value: 120.12,
      date: DateTime.now()
      ),

  ];

Widget build(BuildContext context){
  return Scaffold(
   appBar: AppBar( title: Text('Despesas Pessoais'),
   ),
   body: Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Container(
      width: double.infinity,
      child: Card(
        color: Colors.blue,
        child: Text('Grafico'),
        elevation: 5,
      ),
    ),
    Column
    (
      children:_transaction.map((tr) {
        return Card(
          child: Row(children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
              child: Text(tr.value.toString()),
            ),
            Column(
              children: [
                Text(tr.title),
                Text(tr.date.toString())
              ],
            )
          ]),
        );

      }).toList(),
      
    ),

   ]),
  );
}
}