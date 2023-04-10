import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstaHomePage extends StatefulWidget {
  const InstaHomePage({Key? key}) : super(key: key);

  @override
  State<InstaHomePage> createState() => _InstaHomePageState();
}

class _InstaHomePageState extends State<InstaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Instasohor",style: GoogleFonts.pacifico(textStyle: TextStyle(
          color: Colors.black,
          fontSize: 28
        )),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.favorite_border, color: Colors.black,size: 28,)),
          IconButton(onPressed: (){},
              icon: Icon(Icons.send, color: Colors.black,size: 28,))
        ],
      ),
    );
  }
}
