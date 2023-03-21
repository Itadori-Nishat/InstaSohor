import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class ShakeToIncrease extends StatefulWidget {
  const ShakeToIncrease({Key? key}) : super(key: key);

  @override
  State<ShakeToIncrease> createState() => _ShakeToIncreaseState();
}

int shakecounter = 0;


class _ShakeToIncreaseState extends State<ShakeToIncrease> {
  @override
  Widget build(BuildContext context) {
    ShakeDetector.autoStart(
        onPhoneShake: (){
          setState(() {
            shakecounter++;
          });
        }
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Shake to increase"),
            Text("$shakecounter",style: TextStyle(
              fontSize: 25
            ),),
          ],
        ),
      ),
    );
  }
}
