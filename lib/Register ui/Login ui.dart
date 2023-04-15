import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitledsadfawdsfdfasdf/Data_Brain/UserdataProvider.dart';

import '../MainHome.dart';
import '../ui/InboxDecorationProperty.dart';
import 'Forget  pass ui.dart';
import 'Registration ui.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscuretext = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController  _passwordController = TextEditingController();


  String name = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///App Logo
                  Center(child: Text("Instasohor",style: GoogleFonts.pacifico(textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 40
                  )),)),

                  ///Welcome Text
                  const SizedBox(height: 50,),
                  Text("Welcome back. you've been missed!", style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700
                  ),),

                  ///username section
                  const SizedBox(height: 30,),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                      hintText: "UserName",
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

                  ///Password section
                  const SizedBox(height: 15,),
                  TextFormField(
                    controller: _passwordController,
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

                  ///Forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                        },
                        child: Text("Forgot password?",style: TextStyle(
                            color: Colors.grey.shade700
                        ),),
                      ),
                    ],
                  ),

                  ///SignIn section
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){
                        context.read<USERDATAPROVIDER>().updateUi(name, email);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InstaSohorMainHomePage()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text("Sign in",style: TextStyle(
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

                  ///Create Account
                  SizedBox(height: 10,),
                  Center(
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RagistrationPage()));
                        },
                        child: Text("Don't have account? Create one", style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                  ),

                  ///Divider
                  const SizedBox(height: 40,),
                  Row(
                    children: [
                      const Expanded(child: Divider(thickness: 2,)),
                      const SizedBox(width: 20,),
                      const Text("or continue  with", style: TextStyle(
                          fontSize: 17
                      ),),
                      const SizedBox(width: 20,),
                      const Expanded(child: Divider(thickness: 3,)),
                    ],
                  ),

                  ///SignIn with
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                    children: [
                      SizedBox(
                        child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(const EdgeInsets.all(15))
                            ),
                            onPressed: (){
                              Fluttertoast.showToast(
                                  backgroundColor: Colors.red,
                                  toastLength: Toast.LENGTH_SHORT,
                                  msg: "Sign in with Google");
                            },
                            child: Image.asset("Assets/google_logo.png", width: 40,)),
                      ),
                      SizedBox(
                        child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(const EdgeInsets.all(15))
                            ),
                            onPressed: (){
                              Fluttertoast.showToast(
                                  backgroundColor: Colors.red,
                                  toastLength: Toast.LENGTH_SHORT,
                                  msg: "Sign in with Facebook");
                            },
                            child: Image.asset("Assets/apple_logo.png", width: 40,)),
                      ),
                      SizedBox(
                        child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(const EdgeInsets.all(15))
                            ),
                            onPressed: (){
                              Fluttertoast.showToast(
                                  backgroundColor: Colors.red,
                                  toastLength: Toast.LENGTH_SHORT,
                                  msg: "Sign in with Apple");
                            },
                            child: Image.asset("Assets/facebook_logo.png", width: 40,)),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
