import 'package:expense/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'widgets/transaction_list.dart';

void main() => runApp(MyApp());

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
// String? titleInput;
// String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Expense'),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Chart!'),
            ),
          ),
          //The main issue which we face now is the transaction list
          // is triggered by our card below so what we do is to lift the state up
          //we have add our new transaction list and we have to manage it to
          //The problem is that our Card is not in our transction list
          //Now what we can do is that we Cut our Card from here and paste it inot the transaction list file
          // But our diffrent approach is that we make two diffrnet widgets
          //one for out text input and second and the input widget and transaction widget into diffrent widget
          //The advantage is our main is still Stateless
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                  // onChanged: (val) {
                  //   titleInput = val;
                  // },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    // onChanged: (val) {
                    //   amountInput = val;
                    // }
                ),
                  TextButton(
                      onPressed:() {
                        // print(titleInput);
                        // print(amountInput);
                      },
                      style: ButtonStyle(
                        foregroundColor:MaterialStatePropertyAll(Colors.purple)
                      ),
                      child: Text('Add Transactions'),
                  ),
              ],
              ),
            ),
          ),
            TransactionList(),
        ],
      ),
    );
  }
}
