import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController titleController = new TextEditingController();
  final TextEditingController amountController = new TextEditingController();

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Amazon',
      amount: 69.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Coupang',
      amount: 12.00,
      date: DateTime.now(),
    ),
  ];

  void _addList(title, amount) {
    setState(() {
      transactions.add(Transaction(
        id: DateTime.now().toString(),
        title: title.text,
        amount: double.parse(amount.text),
        date: DateTime.now(),
      ));
      title.clear();
      amount.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fin_Record"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
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
                    _addList(titleController, amountController);
                  },
                )
              ],
            ),
            Column(
              children: transactions.map((transaction) {
                return Container(
                  child: Card(
                    elevation: 10,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(72, 126, 176, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            transaction.amount.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                transaction.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                DateFormat.yMMMd().add_Hm().format(
                                      transaction.date,
                                    ),
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
