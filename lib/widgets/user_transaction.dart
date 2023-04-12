import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';
class UserTransactions extends StatefulWidget {
  // const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction>_userTransaction = [
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
    ),];

  void _addNewTransaction(String txTitle, String txAmount)
  {


    final amount = double.tryParse(txAmount);
    if (amount == null) {
      print('Invalid amount: $txAmount');
      return;
    }
    final newTx = Transaction(
        title: txTitle,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString()
    );
    setState(() {
      _userTransaction.add(newTx);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
