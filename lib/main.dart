import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/new_transaction.dart';

import '../models/transaction.dart';
import '../widgets/transaction_list.dart';
import 'models/user_transactions.dart';

void main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  ExpensesApp({Key? key}) : super(key: key);

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Shirt',
      amount: 14.59,
      date: DateTime.now(),
    ),
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personal Expenses app'),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 10,
                child: Container(
                  width: 100,
                  // height: 100,
                  child: const Text('CHART!'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: UserTransactions(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
