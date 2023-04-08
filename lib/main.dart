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
  //Added form transaction.dart
  final List<Transaction>transactions = [
    Transaction(
      id: 't1',
    title: 'New Shoes',
    amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: ' Weekly Groceries',
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
       mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                       margin:const EdgeInsets.symmetric(
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
                       child: Text(tx.amount.toString(),
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
                       Text(tx.date.toString(),
                         style: const TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 13,
                           color: Colors.grey,
                         ),),
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
