import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vibration/vibration.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatefulWidget {
  String name;
  String image;
  ChatPage({
    Key? key,
    required this.name,
    required this.image
  }) : super(key: key);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textEditingController = TextEditingController();

  List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black,),
        ),
        title: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CachedNetworkImage(
                              imageUrl:widget.image, fit: BoxFit.cover ),
                        ),
                      ),
                      Positioned(
                        right: 1,
                        bottom: 5,

                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              border: Border.all(color: Colors.grey)),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(widget.name ?? '',
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      "Active now",
                      style: TextStyle(
                          fontSize: 12, color: Colors.black45),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Audio Call",
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Colors.red,
                );
              },
              icon: const Icon(Icons.call,color: Colors.black,)),
          IconButton(
              onPressed: ()  {},
              icon: const Icon(Icons.video_call, color: Colors.black,)),
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "More Info",
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Colors.red,
                );
              },
              icon: const Icon(Icons.info, color: Colors.black,)),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: ScrollController(),
              physics: ScrollPhysics(),
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                              BorderRadius.all(Radius.circular(100))),
                          child: GestureDetector(
                            onLongPress: () {
                              Vibration.vibrate(duration: 5);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    backgroundColor: Colors.grey,
                                    title: Text(
                                      "Unsend this message?",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          TextButton(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () =>
                                                Navigator.of(context).pop(),
                                          ),
                                          TextButton(
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              Vibration.vibrate(duration: 80);
                                              setState(() {
                                                _messages.removeAt(index);
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              _messages[index],
                              textAlign: TextAlign.justify,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Open camera",
                            toastLength: Toast.LENGTH_SHORT,
                            backgroundColor: Colors.red,
                          );
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300),
                          child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        ),
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(11.0),
                      // child: SvgPicture.asset(
                      //   "Assets/smiley.svg",
                      //   height: 18,
                      //   color: Colors.blue,
                      // ),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Message....",
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
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: "Audio record",
                    toastLength: Toast.LENGTH_SHORT,
                    backgroundColor: Colors.red,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade400),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
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
                    child: Icon(
                      Icons.send,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
