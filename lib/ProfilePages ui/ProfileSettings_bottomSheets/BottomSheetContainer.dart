import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/ProfilePages%20ui/EditPage_ui/reqwsfgfg.dart';
import 'package:untitledsadfawdsfdfasdf/ProfilePages%20ui/ProfileSettings_bottomSheets/Bottomsheet_Settings.dart';
import 'package:untitledsadfawdsfdfasdf/Register%20ui/Login%20ui.dart';
import 'package:page_transition/page_transition.dart';
import '../ShareProfile_qr code.dart';

class BottomSheetContainerpage extends StatelessWidget {
  const BottomSheetContainerpage({Key? key}) : super(key: key);

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
                Navigator.push(context, PageTransition(child: BottomSheetSettings(),
                    duration: Duration(milliseconds: 200),
                    type: PageTransitionType.bottomToTop));
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
                Navigator.push(context, PageTransition(child: QrCode(),
                    duration: Duration(milliseconds: 200),
                    type: PageTransitionType.bottomToTop));
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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePicker()));
              },
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


