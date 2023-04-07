import 'package:flutter/material.dart';

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
  // const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Center(
      child: Text('Expense'),
    ),
    ),
     body: Column(
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
           child: Text('List of Tx'),
         ),
       ],
     ),
    );
  }
}
