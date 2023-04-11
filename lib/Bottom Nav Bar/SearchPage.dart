import 'package:flutter/material.dart';

class InstaSearchPage extends StatelessWidget {
  const InstaSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Search and post",style: TextStyle(
            fontSize: 30
        ),),
      ),
    );
  }
}
