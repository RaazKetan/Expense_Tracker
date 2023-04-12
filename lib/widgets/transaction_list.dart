import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  // const TransactionList({Key? key}) : super(key: key);

final List<Transaction>transactions;
TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return  Column(children: transactions.map((tx) {
      return Card(
        child: Row(children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Text('₹${tx.amount}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(tx.title.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.purple,
                ),
              ),
              Text(
                DateFormat.yMMMd().format(tx.date as DateTime),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
        ),
      );
    }).toList(),
    );
  }
}
