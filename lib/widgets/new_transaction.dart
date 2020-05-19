import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                controller: titleController,
                //onChanged: (val) => titleInput = val,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                controller: amountController,
                //onChanged: (val) => amountInput = val,
              ),
              FlatButton(
                textColor: Colors.purple,
                child: Text('Add Transaction'),
                onPressed: () {
                  addNewTransaction(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
              ),
            ]),
      ),
    );
  }
}
