import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  // const NewTransaction({Key? key}) : super(key: key);
// String? titleInput;
// String? amountInput;
final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
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
              onPressed:()=>addTx(
                  titleController.text,
                  amountController.text),
              style: ButtonStyle(
                  foregroundColor:MaterialStatePropertyAll(Colors.purple)
              ),
              child: Text('Add Transactions'),
            ),
          ],
        ),
      ),
    );
  }
}
