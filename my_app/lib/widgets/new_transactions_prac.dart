import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController titleController = new TextEditingController();
  final TextEditingController amountController = new TextEditingController();

  final Function addTransaction;

  NewTransaction(this.addTransaction);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTransaction(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(labelText: "Title"),
            onSubmitted: (_) => submitData,
            controller: titleController,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(labelText: "Amount"),
            onSubmitted: (_) => submitData,
            keyboardType: TextInputType.number,
            controller: amountController,
          ),
        ),
        FlatButton(
          child: Text("SUBMIT"),
          onPressed: submitData,
        )
      ],
    );
  }
}
