import 'package:flutter/material.dart';
import 'Edit profile.dart';
class EditName extends StatefulWidget {
  const EditName({Key? key}) : super(key: key);

  @override
  State<EditName> createState() => _EditNameState();
}

TextEditingController _username2 = new TextEditingController();
final _formKey = GlobalKey<FormState>();

class _EditNameState extends State<EditName> {
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
            Navigator.pop(context, _username2.text);
          },
          icon: Icon((Icons.arrow_back_ios_new_sharp), color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: (){
              if(_formKey.currentState!.validate()) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context,) =>
                    EditProfile()));
              }
            },
            icon: Icon(Icons.check,size: 30,), color: Colors.teal,)
        ],
      ),
      body: Form(
        key: _formKey,
        child: TextFormField(
          controller: _username2,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'user name is required';
            }
            return null;
          },
          onSaved: (value) {
            _username2 = value as TextEditingController;
          },
          decoration: InputDecoration(
            labelText: 'User name',
          ),
        ),
      ),
    );
  }
}
