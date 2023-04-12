import 'package:flutter/material.dart';
import 'dart:math';
import '../NetWorkImages.dart';

class InstaSearchPage extends StatefulWidget {
  const InstaSearchPage({Key? key}) : super(key: key);

  @override
  State<InstaSearchPage> createState() => _InstaSearchPageState();
}

class _InstaSearchPageState extends State<InstaSearchPage> {
  ImageFromNetworkData netImg = ImageFromNetworkData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: 16.0),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: netImg.ImagesNetwork.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(netImg.ImagesNetwork[index]), // Load image from URL
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
