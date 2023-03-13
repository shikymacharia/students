import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class AnalyticsScreen extends StatefulWidget {
  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  late List<charts.Series<Category, String>> _expenseData;
  late List<charts.Series<Category, String>> _incomeData;

  @override
  void initState() {
    super.initState();
    _expenseData = _generateExpenseData();
    _incomeData = _generateIncomeData();
  }

  List<charts.Series<Category, String>> _generateExpenseData() {
    final data = [
      Category('Groceries', 250.0),
      Category('Dining Out', 150.0),
      Category('Shopping', 200.0),
      Category('Transportation', 100.0),
    ];
    return [
      charts.Series<Category, String>(
        id: 'Expense',
        domainFn: (Category category, _) => category.name,
        measureFn: (Category category, _) => category.amount,
        data: data,
        labelAccessorFn: (Category category, _) => '\$${category.amount}',
      )
    ];
  }

  List<charts.Series<Category, String>> _generateIncomeData() {
    final data = [
      Category('Salary', 3000.0),
      Category('Freelance', 500.0),
      Category('Investments', 200.0),
    ];
    return [
      charts.Series<Category, String>(
        id: 'Income',
        domainFn: (Category category, _) => category.name,
        measureFn: (Category category, _) => category.amount,
        data: data,
        labelAccessorFn: (Category category, _) => '\$${category.amount}',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Expenses',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 300.0,
              child: charts.PieChart(
                _expenseData,
                animate: true,
                defaultRenderer: charts.ArcRendererConfig(
                  arcRendererDecorators: [
                    charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.outside,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Income',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 300.0,
              child: charts.BarChart(
                _incomeData,
                animate: true,
                vertical: false,
                defaultRenderer: charts.BarRendererConfig(
                  labelPosition: charts.BarLabelPosition.inside,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final double amount;

  Category(this.name, this.amount);
}
