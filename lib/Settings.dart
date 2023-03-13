import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _enableNotifications = true;
  String _selectedCurrency = 'USD';
  String _selectedLanguage = 'English';
  List<String> _supportedCurrencies = ['USD', 'EUR', 'JPY', 'GBP', 'CAD'];
  List<String> _supportedLanguages = ['English', 'Spanish', 'French', 'German'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notifications',
              style: TextStyle(fontSize: 20.0),
            ),
            SwitchListTile(
              title: Text('Enable Notifications'),
              value: _enableNotifications,
              onChanged: (bool value) {
                setState(() {
                  _enableNotifications = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Currency',
              style: TextStyle(fontSize: 20.0),
            ),
            DropdownButton<String>(
              value: _selectedCurrency,
              onChanged: (String value) {
                setState(() {
                  _selectedCurrency = value;
                });
              },
              items: _supportedCurrencies.map((String currency) {
                return DropdownMenuItem<String>(
                  value: currency,
                  child: Text(currency),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            Text(
              'Language',
              style: TextStyle(fontSize: 20.0),
            ),
            DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              items: _supportedLanguages.map((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
