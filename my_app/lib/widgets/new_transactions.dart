import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function addTrx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransactions(this.addTrx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text("Add"),
                onPressed: () {
                  addTrx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                })
          ],
        ),
      ),
    );
  }
}
