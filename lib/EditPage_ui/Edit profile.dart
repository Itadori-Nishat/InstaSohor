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

  TextEditingController _username = new TextEditingController();
  TextEditingController _nickname = new TextEditingController();
  TextEditingController _bio = new TextEditingController();


  final _formKey = GlobalKey<FormState>();

  final String img = "Assets/img1.jpg";
  Image? image = Image.asset("Assets/img1.jpg");
  Image defaultImage = Image.asset("Assets/img10.jpg");

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
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     duration: Duration(seconds: 3),
                //     backgroundColor: Colors.grey,
                //     content: Text("user name ( " + _username.text + " )has been set"), ),);
                if(_formKey.currentState!.validate()) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      GridViewPage(username: _username.text,userimg: image,)));
                }

              },
              icon: Icon(Icons.check,size: 30,), color: Colors.teal,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Profile page
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: image != null
                            ? image
                            : defaultImage,
                      ),
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
              ///User name

              Form(
                key: _formKey,
                child: TextFormField(
                  maxLength: 20,
                  textCapitalization: TextCapitalization.sentences,
                  controller: _username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'You must give username';
                    }
                    if (value.contains(' ')) {
                      return 'No spaces allowed in user name';
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
              ),

              ///Nick name
              TextFormField(
                controller: _nickname,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
              ),
              ///Bio
              TextFormField(
                maxLength: 101,
                controller: _bio,
                decoration: InputDecoration(
                  labelText: "Bio",

                ),
              ),
              ///Gender
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Gender",

                ),
              ),

              ///Add link
              // TextButton(
              //   onPressed: (){
              //     Fluttertoast.showToast(
              //         msg: "Add link",
              //         backgroundColor: Colors.teal,
              //         toastLength: Toast.LENGTH_SHORT
              //     );
              //   },
              //   child: Text("Add Link", style: TextStyle(
              //     fontSize: 16,
              //   ),),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
