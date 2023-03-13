import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transaction {
  final String category;
  final double amount;
  final DateTime date;

  Transaction(
      {required this.category, required this.amount, required this.date});
}

class TransactionHistoryScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      category: 'Salary',
      amount: 5000.0,
      date: DateTime.parse('2022-03-01'),
    ),
    Transaction(
      category: 'Rent',
      amount: -1200.0,
      date: DateTime.parse('2022-03-05'),
    ),
    Transaction(
      category: 'Groceries',
      amount: -250.0,
      date: DateTime.parse('2022-03-07'),
    ),
    Transaction(
      category: 'Gift',
      amount: 100.0,
      date: DateTime.parse('2022-03-10'),
    ),
  ];

  static String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Card(
            child: ListTile(
              title: Text(transaction.category),
              subtitle: Text(
                DateFormat('MMM dd, yyyy').format(transaction.date),
              ),
              trailing: Text(
                '\$${transaction.amount.toStringAsFixed(2)}',
                style: TextStyle(
                  color: transaction.amount < 0 ? Colors.red : Colors.green,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
