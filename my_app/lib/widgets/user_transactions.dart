import 'package:flutter/material.dart';
import '../widgets/new_transactions.dart';
import '../widgets/transactions_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Game',
      amount: 39.00,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String title, double amount) {
    final newTrx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTrx);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransactions(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
