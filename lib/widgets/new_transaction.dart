import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            controller: titleController,
            // onChanged: (value) {
            //   titleInput = value;
            // },
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
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
            onPressed: () {
              addNewTransaction(
                titleController.text,
                double.parse(amountController.text),
              );
            },
          )
        ]),
      ),
    );
  }
}
