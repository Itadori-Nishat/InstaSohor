import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/Data_Brain/NetWorkImages.dart';

class SearchResultShowScaffold extends StatefulWidget {
  const SearchResultShowScaffold({Key? key}) : super(key: key);

  @override
  State<SearchResultShowScaffold> createState() =>
      _SearchResultShowScaffoldState();
}

class _SearchResultShowScaffoldState extends State<SearchResultShowScaffold> {
  ImageFromNetworkData nameData = ImageFromNetworkData();
  TextEditingController _controller = TextEditingController();

  String? userSearched;
  @override
  Widget build(BuildContext context) {
    List<String> searchFilter = [];
    if(userSearched == null || userSearched!.isEmpty){
    } else {
      for (int i = 0; i<nameData.firstNames.length; i++){
        if(nameData.firstNames[i].toLowerCase().contains(userSearched!.toLowerCase())){
          searchFilter.add(nameData.firstNames[i]);
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
        backgroundColor: Colors.grey.shade300,
        elevation: 4,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            onChanged: (value){
              setState(() {
                userSearched = value;
              });
            },
            controller: _controller,
            style: const TextStyle(fontSize: 16.0),
            decoration: const InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: searchFilter.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(searchFilter[index], style: TextStyle(
                fontSize: 17
              ),),
            ),
          );
        },
          ),
    );
  }
}

