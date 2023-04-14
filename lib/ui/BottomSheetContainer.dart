import 'package:flutter/material.dart';

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
            Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Icon(Icons.settings),
                 ),
                Text("Settings", style: TextStyle(
                  fontSize: 17
                ),),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QrCode()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.qr_code),
                  ),
                  Text("Qr code", style: TextStyle(
                      fontSize: 17
                  ),),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.archive),
                ),
                Text("Archive", style: TextStyle(
                    fontSize: 17
                ),),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.logout, color: Colors.red,),
                ),
                Text("Logout", style: TextStyle(
                    fontSize: 17,
                  color: Colors.red
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
