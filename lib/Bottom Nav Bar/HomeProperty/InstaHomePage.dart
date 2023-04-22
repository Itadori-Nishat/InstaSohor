import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/HomeProperty/InboxProperty.dart';
import 'package:untitledsadfawdsfdfasdf/ui/InboxDecorationProperty.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Instasohor",style: GoogleFonts.pacifico(textStyle: TextStyle(
          color: Colors.black,
          fontSize: 28
        )),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                InboxDecoration(inboxImage: '', InboxName: '')));
          },
              icon: Icon(Icons.favorite_border, color: Colors.black,size: 28,)),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InstaInboxPage()));
            },
              child: Image.asset("Assets/chat_icon.png"))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
