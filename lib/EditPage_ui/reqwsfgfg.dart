import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyFormPage extends StatefulWidget {
  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  bool hasAccount = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Account'),
      ),
      body: hasAccount
          ? Column(
        children: [
          // Display account information
          Text('Account Name: John Doe'),
          Text('Account Number: XXXXXXXX'),
          // Add a switch account button
          ElevatedButton(
            onPressed: () {
              // Logic to switch account
              Fluttertoast.showToast(msg: "switch account");
            },
            child: Text('Switch Account'),
          ),
        ],
      )
          : Column(
        children: [
          // Display add account option
          Text('No account found'),
          // Add an add account button
          ElevatedButton(
            onPressed: () {
              // Logic to add account
              print('Add Account');
            },
            child: Text('Add Account'),
          ),
        ],
      ),
    );
  }
}


