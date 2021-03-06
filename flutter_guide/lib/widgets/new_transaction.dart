import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function tx;
  NewTransaction(this.tx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: amountController,
              // onChanged: (val) => amountInput = val,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            FlatButton(
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                print(titleController);
                print(amountController);
                tx(titleController.text, double.parse(amountController.text));
              },
              child: Text(
                'Add Transaction',
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
