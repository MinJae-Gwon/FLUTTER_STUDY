import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;

  TransactionList(this.userTransaction);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: userTransaction.length,
      itemBuilder: (context, index) {
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
                    userTransaction[index].amount.toStringAsFixed(2),
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
                        userTransaction[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        DateFormat.yMMMd().add_Hm().format(
                              userTransaction[index].date,
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
      },
    );
  }
}
