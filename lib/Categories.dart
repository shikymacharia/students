import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> _expenseCategories = [
    'Food',
    'Housing',
    'Transportation',
    'Entertainment',
    'Utilities',
    'Shopping',
    'Other'
  ];
  List<String> _incomeCategories = [
    'Salary',
    'Freelance',
    'Investments',
    'Gifts',
    'Other'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Expense Categories',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: _expenseCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_expenseCategories[index]),
                    onTap: () {
                      // handle category selection
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Income Categories',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: _incomeCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_incomeCategories[index]),
                    onTap: () {
                      // handle category selection
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
