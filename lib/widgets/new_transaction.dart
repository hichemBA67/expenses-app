import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    addNewTransaction(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            onSubmitted: (_) => submitData(),
            controller: titleController,
            // onChanged: (value) {
            //   titleInput = value;
            // },
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            onSubmitted: (_) => submitData(),
            keyboardType: TextInputType.number,
            controller: amountController,
            // onChanged: (value) {
            // onChanged: (value) => amountInput = value,
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                Colors.purple,
              ),
            ),
            child: Text('Add Transaction'),
            onPressed: submitData,
          )
        ]),
      ),
    );
  }
}
