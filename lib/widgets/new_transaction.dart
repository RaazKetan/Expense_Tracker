import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  // const NewTransaction({Key? key}) : super(key: key);
// String? titleInput;
// String? amountInput;
final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
NewTransaction(this.addTx);

void submitData()
{
  final enterTitle = titleController.text;
  final enterAmount = double.tryParse(amountController.text);

  if(enterTitle.isEmpty || enterAmount! <= 0)
    {
      return;
    }
  addTx(
      titleController.text,
      amountController.text
  );
}
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
              onSubmitted:(_)=> submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted:(_)=> submitData(),
              // onChanged: (val) {
              //   amountInput = val;
              // }
            ),
            TextButton(
              onPressed:submitData,
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
