import 'package:flutter/material.dart';

import '../../Data_Brain/NetWorkImages.dart';

class InboxSearchResult extends StatefulWidget {
  const InboxSearchResult({Key? key}) : super(key: key);

  @override
  State<InboxSearchResult> createState() => _InboxSearchResultState();
}

class _InboxSearchResultState extends State<InboxSearchResult> {
  ImageFromNetworkData nameData = ImageFromNetworkData();

  TextEditingController _controller = TextEditingController();
  String? inboxSearchedName;

  @override
  Widget build(BuildContext context) {
    List<String> searchinboxFilter = [];
    if(inboxSearchedName == null || inboxSearchedName!.isEmpty) {
    } else {
      for(int i = 0; i<nameData.firstNames.length; i++){
        if(nameData.firstNames[i].toLowerCase().contains(inboxSearchedName!.toLowerCase())){
          searchinboxFilter.add(nameData.firstNames[i]);
        }
      }
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 4,
        title: TextFormField(
          controller: _controller,
          onChanged: (value) {
            setState(() {
              inboxSearchedName = value;
            });
          },
          style: const TextStyle(fontSize: 16.0),
          decoration: const InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey,fontSize: 19),
            border: InputBorder.none,
            contentPadding:
            EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: searchinboxFilter.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(searchinboxFilter[index], style: TextStyle(
                  fontSize: 18
              ),),
            ),
          );
        },),
    );
  }
}
