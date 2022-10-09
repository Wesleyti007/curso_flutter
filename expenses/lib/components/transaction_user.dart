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
    Transaction(
      id: 't3', 
      title: 'Conta de luz', 
      value: 120.12, 
      date: DateTime.now()),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm()
      ],
    );
  }
    
}
