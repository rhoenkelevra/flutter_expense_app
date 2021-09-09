import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/transaction.dart';

class TransactionList extends StatelessWidget {
  late final List<Transaction> transactions;

  // The constructor is how we get data from the parent to child
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            // transactions
            children: transactions.map((tx) {
          return Card(
            child: Row(
              children: <Widget>[
                /**  amount */
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 50,
                  ),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple.shade400,
                      width: 1,
                    ),
                  ),
                  child: Text('\$${tx.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple[400],
                      )),
                ),

                /// title, date
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(tx.title,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      Text(DateFormat('yyyy-MM-dd').format(tx.date),
                          style: TextStyle(
                            color: Colors.grey[600],
                          )),
                    ])
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
