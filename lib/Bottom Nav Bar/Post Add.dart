import 'package:flutter/material.dart';

class InstaPostAddPage extends StatelessWidget {
  const InstaPostAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Add post",style: TextStyle(
          fontSize: 30
        ),),
      ),
    );
  }
}
