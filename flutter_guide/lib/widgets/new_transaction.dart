import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function tx;
  NewTransaction(this.tx);

  void submitdata() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return; //stop function execute
    }

    tx(enteredTitle, enteredAmount);
  }

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
              onSubmitted: (_) => submitdata(), //_ : u don't giv-2e mind to use it
            ),
            TextField(
              controller: amountController,
              // onChanged: (val) => amountInput = val,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitdata(), //_ : u don't give mind to use it
            ),
            FlatButton(
              onPressed: submitdata,
              // () {
              //   // print(titleInput);
              //   // print(amountInput);
              //   print(titleController);
              //   print(amountController);
              // },
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
