import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Edit Profile", style: TextStyle(
          color: Colors.black
        ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon((Icons.arrow_back_ios_new_sharp), color: Colors.black,),
        ),
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.check,size: 30,), color: Colors.teal,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",

              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "User name",

              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Pronouns",

              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Bio",

              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Gender",

              ),
            ),

            ///Add link
            TextButton(
              onPressed: (){
                Fluttertoast.showToast(
                    msg: "Add link",
                    backgroundColor: Colors.teal,
                    toastLength: Toast.LENGTH_SHORT
                );
              },
              child: Text("Add Link", style: TextStyle(
                fontSize: 16,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
