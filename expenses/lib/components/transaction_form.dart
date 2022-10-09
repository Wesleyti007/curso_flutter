

import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
 
   final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Título',

                      ),
                    ),
                    TextField(
                      controller: valueController,
                       decoration: InputDecoration(
                        labelText: 'Valor (R\$)',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(child: Text('Nova Transação'),
                        textColor:  Colors.orange[900],
                        onPressed: (){
                          print(titleController.text);
                          print(titleController.text);
                        },),
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}