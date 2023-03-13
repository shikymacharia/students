import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _name = 'John Doe';
  String _email = 'johndoe@example.com';
  String _phone = '+1 (555) 555-5555';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              initialValue: _name,
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Email',
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              initialValue: _email,
              onChanged: (String value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Phone',
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              initialValue: _phone,
              onChanged: (String value) {
                setState(() {
                  _phone = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
