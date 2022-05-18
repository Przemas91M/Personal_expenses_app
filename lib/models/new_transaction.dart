import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTx);

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          TextButton(
            child: const Text(
              'Add transaction',
              style: TextStyle(color: Colors.teal),
            ),
            onPressed: () {
              addTx(titleController.text, double.parse(amountController.text));
            },
          ),
        ],
      ),
    );
  }
}
