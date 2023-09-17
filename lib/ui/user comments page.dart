import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitledsadfawdsfdfasdf/Data_Brain/UserdataProvider.dart';
class CommentsPage extends StatefulWidget {
  CommentsPage({Key? key}) : super(key: key);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  TextEditingController  _textEditingController = TextEditingController();

  List<String> _messages = [];
  bool _isLikedComments = false;

  int likeCount = 0;

  void likedComment() {
    setState(() {
      _isLikedComments = !_isLikedComments;
      if (_isLikedComments) {
        likeCount++;
      } else {
        likeCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.more_vert, color: Colors.black,))
        ],
        title: Text("Comments",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset("Assets/img10.jpg",fit: BoxFit.cover,)),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(context.watch<USERDATAPROVIDER>().userNameProv,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                            ),),
                            Text(_messages[index]),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: likedComment,
                            icon: Icon(_isLikedComments? Icons.favorite: Icons.favorite_border,
                              color: _isLikedComments? Colors.red: Colors.black,size: 15,)),
                        Text(likeCount.toString(),style: TextStyle(
                          fontSize: 12
                        ),)
                      ],
                    )
                  ],
                ));
          },)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("Assets/img10.jpg",fit: BoxFit.cover,)),
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _textEditingController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Comments as ${context.watch<USERDATAPROVIDER>().userNameProv}...",
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                        const BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.transparent)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    String message = _textEditingController.text;
                    if (message.isEmpty) {
                      return;
                    } else {
                      setState(() {
                        _messages.add(message);
                        _textEditingController.clear();
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text("post"),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
