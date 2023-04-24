import 'package:flutter/material.dart';

//okay now the issue we face is that when we click on the title or he amount section the data which is entered in those text fields gets lost so to deal with it we
//chanage from the statless widget to statefull widget

//why we did it? the flutter does it internalyy it re-evalualtes its widgets from time to time and for stateless widget the internally store data is lost
class NewTransaction extends StatefulWidget {
  // const NewTransaction({Key? key}) : super(key: key);
// String? titleInput;
// String? amountInput;
final Function addTx;

NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

void submitData()
{
  final enterTitle = titleController.text;
  final enterAmount = double.tryParse(amountController.text);

  if(enterTitle.isEmpty || enterAmount! <= 0)
    {
      return;
    }
  widget.addTx(
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
              style: const ButtonStyle(
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
