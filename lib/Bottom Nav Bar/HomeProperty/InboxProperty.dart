import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/HomeProperty/user_Inbox.dart';
import '../../Data_Brain/Image_usernamesData.dart';
import '../../Data_Brain/UserdataProvider.dart';
import '../../ui/InboxDecorationProperty.dart';
import 'inboxSearchResult.dart';

class InstaInboxPage extends StatefulWidget {
  InstaInboxPage({Key? key,}) : super(key: key);
  @override
  State<InstaInboxPage> createState() => _InstaInboxPageState();
}

class _InstaInboxPageState extends State<InstaInboxPage> {

  static List<USERNAME_IMAGE> name_image = [
    USERNAME_IMAGE(Image: 'https://images.unsplash.com/photo-1680890979873-ec8584a11d97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        name: "Allen"),
    USERNAME_IMAGE(Image: 'https://images.unsplash.com/photo-1653140296827-ecff35bfa281?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        name: "Masud"),
    USERNAME_IMAGE(Image: 'https://images.unsplash.com/photo-1678266579947-2df5b55d6ecf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        name: "Nishat"),
    USERNAME_IMAGE(Image: 'https://images.unsplash.com/photo-1681069693474-605332820d67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        name: "Opi"),

  ];

  List<USERNAME_IMAGE> _display = List.from(name_image);


  TextEditingController _controller = TextEditingController();
  USERNAME_IMAGE _nameimage = USERNAME_IMAGE();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(context.watch<USERDATAPROVIDER>().userNameProv, style: TextStyle(
              color: Colors.black
            ),),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black,),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InboxSearchResult()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.04,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black.withOpacity(0.5),),
                      SizedBox(width: 10,),
                      Text("Search", style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 17
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: _display.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          ChatPage(name: _display[index].name.toString(), image: _display[index].Image.toString(),)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: _display[index].Image!,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_display[index].name!,style: TextStyle(
                                      fontSize: 16,

                                    ),),
                                    Text("Active",style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.camera, color: Colors.black54,))
                        ],
                      ),
                    ),
                  );
                },))
        ],
      ),
    );
  }
}
