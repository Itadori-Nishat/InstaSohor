import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/ProfilePages%20ui/ProfileSettings_bottomSheets/Bottomsheet_Settings.dart';
import 'package:untitledsadfawdsfdfasdf/Register%20ui/Login%20ui.dart';

import '../ProfilePages ui/ShareProfile_qr code.dart';

class BottomSheetContainerpage extends StatefulWidget {
  const BottomSheetContainerpage({Key? key}) : super(key: key);

  @override
  State<BottomSheetContainerpage> createState() => _BottomSheetContainerpageState();
}

class _BottomSheetContainerpageState extends State<BottomSheetContainerpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomSheetSettings()));
              },
              child: Row(
                children: [
                  Icon(Icons.settings,color: Colors.black,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Settings", style: TextStyle(
                        fontSize: 17,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => QrCode()));
              },
              child: Row(
                children: [
                  Icon(Icons.qr_code,color: Colors.black,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Qr code", style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Row(
                children: [
                  Icon(Icons.archive,color: Colors.black,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Archive", style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.red,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Logout", style: TextStyle(
                        fontSize: 17,
                        color: Colors.red
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


