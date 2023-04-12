import 'package:flutter/material.dart';
import '../ProfilePages ui/ProfilePage.dart';
import 'Post Add.dart';

class ShimmerLoadingProfilePage extends StatefulWidget {
  const ShimmerLoadingProfilePage({Key? key}) : super(key: key);

  @override
  State<ShimmerLoadingProfilePage> createState() => _ShimmerLoadingProfilePageState();
}

class _ShimmerLoadingProfilePageState extends State<ShimmerLoadingProfilePage> {
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    // Simulate loading delay
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        _isLoading = false; // Set loading status to false after 2 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? InstaPostAddPage() // Show shimmer loading if still loading
          : ProfileGridViewPage(), //,
    );
  }
}
