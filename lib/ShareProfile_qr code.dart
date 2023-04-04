import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QrCode extends StatelessWidget {
  QrCode({Key? key}) : super(key: key);

  String data =
      'https://www.instagram.com/phox_nishat/';

  Color color1 = Color(0xFFE06A7E);
  Color color2 = Color(0xFFE54D34);
  Color color3 = Color(0xFFDC3147);
  Color color4 = Color(0xFFE18D7F);
  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width =  MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color1,
            color2,
            color3,
            color4
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: (){
                  Fluttertoast.showToast(
                      msg: "Open camera to scan",
                      backgroundColor: Colors.teal,
                      toastLength: Toast.LENGTH_SHORT
                  );
                },
                child: Row(
                  children: [
                    Text("Scan others",style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: Icon(Icons.camera_alt_outlined, color: Colors.black,),
                    ),
                  ],
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: QrImage(
                      dataModuleStyle: QrDataModuleStyle(
                        color: Colors.red,

                      ),
                      eyeStyle: QrEyeStyle(
                        color: Colors.red
                      ),
                      gapless: false,
                      backgroundColor: Colors.white,
                      data: data,
                      version: QrVersions.auto,
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('Assets/img11.jpg',),
                            opacity: 0.7,
                            fit: BoxFit.contain,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Scan this QR code to open the app',style: TextStyle(
              color: Colors.white, fontSize: 20
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ///Share profile button
                GestureDetector(
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "Share profile",
                      backgroundColor: Colors.teal,
                      toastLength: Toast.LENGTH_SHORT
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                         shape: BoxShape.circle
                        ),
                        child: Icon(Icons.share),
                      ),
                      SizedBox(height: 5,),
                      Text("Share Profile", style: TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  ),
                ),

                ///
                /// Copy Link button
                GestureDetector(
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "Copy Link",
                        backgroundColor: Colors.teal,
                        toastLength: Toast.LENGTH_SHORT
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.link),
                      ),
                      SizedBox(height: 5,),
                      Text("Copy Link", style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
