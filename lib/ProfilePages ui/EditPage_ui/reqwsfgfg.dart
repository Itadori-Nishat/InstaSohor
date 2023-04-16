import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {

  File? _ImagePicker;

  // cameraImage() async {
  //   var imageCam = await ImagePicker.pickImage(source: ImageSource.camera);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.grey,
            ),
          ),
          ElevatedButton(onPressed: (){},
              child: Text("Image from camera")),
          ElevatedButton(onPressed: (){},
              child: Text("Image from Gallary"))
        ],
      ),
    );
  }
}
