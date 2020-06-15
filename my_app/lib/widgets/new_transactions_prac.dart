import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController titleController = new TextEditingController();
  final TextEditingController amountController = new TextEditingController();

  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: titleController,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amountController,
          ),
        ),
        FlatButton(
          child: Text("SUBMIT"),
          onPressed: () {
            addTransaction(
              titleController.text,
              double.parse(amountController.text),
            );
          },
        )
      ],
    );
  }
}
