import 'package:flutter/material.dart';

import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.other),
    Expense(
        title: 'Dart',
        amount: 9.99,
        date: DateTime.now(),
        category: Category.other),
    Expense(
        title: 'Bus',
        amount: 2.99,
        date: DateTime.now(),
        category: Category.transportation),
    Expense(
        title: 'Pasta',
        amount: 5.99,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      body: const Column(
        children: [
          Text('Expenses'),
          Text('data'),
        ],
      ),
    );
  }
}
