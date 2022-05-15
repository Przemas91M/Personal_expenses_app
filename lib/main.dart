import 'package:flutter/material.dart';

void main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses app'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                width: 100,
                height: 100,
                child: const Text('CHART!'),
              ),
            ),
            const Card(
              child: const Text('List of transactions'),
            )
          ],
        ),
      ),
    );
  }
}
