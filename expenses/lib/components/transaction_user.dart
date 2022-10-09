import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {

  @override
  _TransactionUser createState() => _TransactionUser();
}

class _TransactionUser extends State<TransactionUser> {
   final _transaction = [
    Transaction(
        id: 't1',
        title: 'Novo tenis de corrida',
        value: 354.76,
        date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Almoço', 
      value: 50.76, 
      date: DateTime.now()),
  ];

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title, 
      value: value, 
      date: DateTime.now(),);

    setState(() {
      _transaction.add(newTransaction);
    });  
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transaction),
      ],
    );
  } 
}
