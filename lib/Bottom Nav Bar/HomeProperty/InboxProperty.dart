import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/HomeProperty/user_Inbox.dart';
import '../../ui/InboxDecorationProperty.dart';
import 'inboxSearchResult.dart';

class InstaInboxPage extends StatefulWidget {
  InstaInboxPage({Key? key,}) : super(key: key);




  @override
  State<InstaInboxPage> createState() => _InstaInboxPageState();
}

class _InstaInboxPageState extends State<InstaInboxPage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("username", style: TextStyle(
          color: Colors.black
        ),),
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
                // child: TextFormField(
                //   style: const TextStyle(fontSize: 16.0),
                //   decoration: const InputDecoration(
                //     hintText: 'Search',
                //     hintStyle: TextStyle(color: Colors.grey),
                //     prefixIcon: Icon(Icons.search),
                //     border: InputBorder.none,
                //     contentPadding: EdgeInsets.all(8.0),
                //   ),
                // ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                    },
                      child: InboxDecoration());
                },))
        ],
      ),
    );
  }
}
