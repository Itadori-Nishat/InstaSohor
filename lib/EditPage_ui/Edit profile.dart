import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitledsadfawdsfdfasdf/EditPage_ui/ProfilePagepage.dart';
import 'package:untitledsadfawdsfdfasdf/GridViewFolder.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  TextEditingController _name = new TextEditingController();
  TextEditingController _username = new TextEditingController();
  TextEditingController _bio = new TextEditingController();
  TextEditingController _addlink = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
                if(_formKey.currentState!.validate()) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      GridViewPage(name: _username.text,)));
                }
              },
              icon: Icon(Icons.check,size: 30,), color: Colors.teal,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Profile page
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("Assets/img5.jpg"),
                      ),
                      ///Edit picture
                      TextButton(
                        onPressed: (){
                          Fluttertoast.showToast(
                              msg: "Edit picture",
                              backgroundColor: Colors.teal,
                              toastLength: Toast.LENGTH_SHORT
                          );
                        },
                        child: Text("Edit picture or change", style: TextStyle(
                          fontSize: 15,
                        ),),
                      ),
                    ],
                  ),
                ),

                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'user name is required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _username = value as TextEditingController;
                  },
                  decoration: InputDecoration(
                    labelText: 'User name',
                  ),
                ),
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    labelText: "Name",

                  ),
                ),
                TextFormField(
                  maxLength: 101,
                  controller: _bio,
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
        ),
      ),
    );
  }
}
