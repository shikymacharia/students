import 'package:flutter/material.dart';
import 'package:student_wallet/profile.dart';

import 'Analytics.dart';
import 'Categories.dart';
import 'History .dart';
import 'Settings.dart';
import 'add.dart';
import 'home.dart';
import 'incomeadd.dart';
import 'login.dart';
import 'sign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Wallet App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.signUp: (context) => SignUpScreen(),
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.addExpense: (context) => AddExpenseScreen(),
        AppRoutes.addIncome: (context) => AddIncomeScreen(),
        AppRoutes.transactionHistory: (context) => TransactionHistoryScreen(),
        AppRoutes.budget: (context) => BudgetScreen(),
        AppRoutes.categories: (context) => CategoriesScreen(),
        AppRoutes.settings: (context) => SettingsScreen(),
        AppRoutes.profile: (context) => ProfileScreen(),
        AppRoutes.analytics: (context) => AnalyticsScreen(),
      },
    );
  }
}

class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String home = '/home';
  static const String addExpense = '/addExpense';
  static const String addIncome = '/addIncome';
  static const String transactionHistory = '/transactionHistory';
  static const String budget = '/budget';
  static const String categories = '/categories';
  static const String settings = '/settings';
  static const String profile = '/profile';
  static const String analytics = '/analytics';
}
