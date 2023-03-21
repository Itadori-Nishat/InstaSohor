import 'package:flutter/material.dart';

class ShakeToIncrease extends StatefulWidget {
  const ShakeToIncrease({Key? key}) : super(key: key);

  @override
  State<ShakeToIncrease> createState() => _ShakeToIncreaseState();
}

int counter = 0;

class _ShakeToIncreaseState extends State<ShakeToIncrease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){

      },
      child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("Shake to increase"),
      ),
    );
  }
}
