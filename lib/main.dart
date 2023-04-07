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
         const Card(
           color: Colors.red,
           child: Text('List of Tx'),
         ),
       ],
     ),
    );
  }
}
