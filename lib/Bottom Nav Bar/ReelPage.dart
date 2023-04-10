import 'package:flutter/material.dart';

class InstaReelPage extends StatefulWidget {
  const InstaReelPage({Key? key}) : super(key: key);

  @override
  State<InstaReelPage> createState() => _InstaReelPageState();
}

class _InstaReelPageState extends State<InstaReelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(
          initialPage: 3
        ),
      ),
    );
  }
}
