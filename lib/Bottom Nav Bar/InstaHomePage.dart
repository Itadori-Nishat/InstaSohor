import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitledsadfawdsfdfasdf/ui/PostContainer.dart';

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
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Instasohor",style: GoogleFonts.pacifico(textStyle: TextStyle(
          color: Colors.black,
          fontSize: 28
        )),),
        actions: [
          IconButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "Notification",
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.grey
            );
          },
              icon: Icon(Icons.favorite_border, color: Colors.black,size: 28,)),
          IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => PostDecorationUI()));
          },
              icon: Icon(Icons.send, color: Colors.black,size: 28,))
        ],
      ),
      body: Center(
        child: Text("Home",style: TextStyle(
            fontSize: 30
        ),),
      ),
    );
  }
}
