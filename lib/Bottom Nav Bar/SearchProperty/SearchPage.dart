import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/SearchProperty/SearchResultPage.dart';
import '../../Data_Brain/NetWorkImages.dart';

class InstaSearchPage extends StatefulWidget {
  const InstaSearchPage({Key? key}) : super(key: key);

  @override
  State<InstaSearchPage> createState() => _InstaSearchPageState();
}

class _InstaSearchPageState extends State<InstaSearchPage> {
  ImageFromNetworkData netImg = ImageFromNetworkData();

  @override
  Widget build(BuildContext context) {
    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchResultShowScaffold()));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchResultShowScaffold()));
          },
          child: Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
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

      body: GridView.builder(
        itemCount: netImg.ImagesNetwork.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(netImg.ImagesNetwork[index]), // Load image from URL
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
