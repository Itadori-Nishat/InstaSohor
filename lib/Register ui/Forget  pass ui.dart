import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text("Forgot Password",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Forgot Your password? No worries! we got you. Please enter your email address you've used to sign up",
              style:GoogleFonts.anaheim(textStyle: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),), textAlign: TextAlign.justify,),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                hintText: "Email",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            SizedBox(height: 50,),
            SizedBox(
              width: width*0.5,
              child: TextButton(
                onPressed: (){
                  Fluttertoast.showToast(
                      msg: "Email has been sent",
                      backgroundColor: Colors.red,
                      toastLength: Toast.LENGTH_SHORT
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text("Next",style: TextStyle(
                      fontSize: 19
                  ),),
                ),
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  ),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(
                      125, 35, 87, 94).withOpacity(0.8),),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
