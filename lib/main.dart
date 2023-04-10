import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/ProfilePages%20ui/ProfilePage.dart';
import 'package:flutter/services.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/InstaSohorMainHomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: InstaSohorMainHomePage(),
    );
  }
}
