import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitledsadfawdsfdfasdf/Register%20ui/Login%20ui.dart';

import '../Bottom Nav Bar/HomeProperty/InboxProperty.dart';

class RagistrationPage extends StatefulWidget {
  String? usernameRed;
  String?emailReg;
  String? passwordReg;
  RagistrationPage({Key? key,this.usernameRed,this.emailReg, this.passwordReg}) : super(key: key);

  @override
  State<RagistrationPage> createState() => _RagistrationPageState();
}

class _RagistrationPageState extends State<RagistrationPage> {

  bool _obscuretext = true;
  TextEditingController _userNamecontroller = TextEditingController();
  TextEditingController _userEmailcontroller = TextEditingController();
  TextEditingController _userPasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.1,),
                Center(child: Text("Instasohor",style: GoogleFonts.pacifico(textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 40
                )),)),
                Row(
                  children: [
                    Text("already have an account?",
                        style: GoogleFonts.abel(textStyle: TextStyle(
                            fontSize: 19,
                            color: Colors.black
                        ),)),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      }, child: Text("Login here",
                        style: GoogleFonts.abel(textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 14, 131, 136)
                        ),)),)
                  ],
                ),
                ///user FirstName section
                const SizedBox(height: 30,),
                TextFormField(
                  controller: _userNamecontroller,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                    hintText: "Userame",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                ///user Email section
                const SizedBox(height: 15,),
                TextFormField(
                  controller: _userEmailcontroller,
                  keyboardType: TextInputType.emailAddress,
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
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                ///user Password section
                const SizedBox(height: 15,),
                TextFormField(
                  controller: _userPasscontroller,
                  obscureText: _obscuretext,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                ///user Confirm Password section
                const SizedBox(height: 15,),
                TextFormField(
                  obscureText: _obscuretext,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          _obscuretext =!_obscuretext;
                        });
                      },
                      child: Icon(_obscuretext?Icons.visibility_off_outlined:Icons.visibility, color: Colors.grey,),
                    ),
                    hintText: "Confirm Password",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                ///user SignUp section
                const SizedBox(height: 40,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){
                      Fluttertoast.showToast(msg: "Account has been created");
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text("Create account",style: TextStyle(
                          fontSize: 19
                      ),),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(
                          125, 35, 87, 94).withOpacity(0.8),),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text("By singning up to New App, you agree to our", style: GoogleFonts.anaheim(textStyle: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(.7),
                          letterSpacing: .5
                      ),), ),
                    ),
                    Expanded(
                      child: Text("Terms and conditions",style: GoogleFonts.anaheim(textStyle: TextStyle(
                        color: Color.fromARGB(255, 14, 131, 136),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
