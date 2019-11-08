import 'package:flutter/material.dart';

class NewTransactions extends StatefulWidget {
  final Function addTx;

  NewTransactions(this.addTx);

  @override
  _NewTransactionsState createState() => _NewTransactionsState();
}

class _NewTransactionsState extends State<NewTransactions> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0.0) {
      return;
    }
    this.widget.addTx(
          titleController.text,
          double.parse(amountController.text),
        );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title of the expense'),
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                controller: amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                onSubmitted: (_) => submitData(),
              ),
              FlatButton(
                onPressed: submitData,
                child: Text("Do Transaction"),
                textColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
