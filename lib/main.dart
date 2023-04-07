import 'package:flutter/material.dart';
import './transaction.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Expense Tracker',
    home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  //Dummy list of Items
  //Added form transction.dart
  final List<Transaction>transactions = [
    Transaction(
      id: 't1',
    title: 'New Shoes',
    amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Center(
      child: Text('Expense'),
    ),
    ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         Container(
           width: double.infinity,
           child: const Card(
             color: Colors.blue,
             elevation: 5,
             child:
           Text('Chart!'),
           ),
         ),
           Column(
             children: transactions.map((tx) {
               return Card(
                 child: Row(
                   children: <Widget>[
                     Container(
                       child: Text(tx.amount.toString(),
                       ),
                     ),
                     Column(children: <Widget>[
                       Text(tx.title.toString()),
                       Text(tx.date.toString()),
                     ],)
                   ],
                 ),
               );
             }).toList(),
           ),
       ],
     ),
    );
  }
}
