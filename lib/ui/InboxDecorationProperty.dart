import 'package:flutter/material.dart';

class InboxDecoration extends StatefulWidget {
  String? inboxImage;
  String? InboxName;
  InboxDecoration({Key? key, this.inboxImage, this.InboxName}) : super(key: key);

  @override
  State<InboxDecoration> createState() => _InboxDecorationState();
}

class _InboxDecorationState extends State<InboxDecoration> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("Assets/img11.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Allen Masud", style: TextStyle(
                          fontSize: 16
                        ),),
                        Text("Active", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
    );
  }
}
