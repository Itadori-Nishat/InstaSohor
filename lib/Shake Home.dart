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
      shakeThresholdGravity: 3,
        minimumShakeCount: 1,
        onPhoneShake: (){
          setState(() {
            shakecounter ++;
          });
        }
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Shake to • increase"),
            Text("$shakecounter",style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
