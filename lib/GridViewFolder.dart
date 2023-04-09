import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitledsadfawdsfdfasdf/EditPage_ui/Edit%20profile.dart';
import 'package:untitledsadfawdsfdfasdf/EditPage_ui/reqwsfgfg.dart';
import 'package:untitledsadfawdsfdfasdf/ShareProfile_qr%20code.dart';


class GridViewPage extends StatelessWidget {
  String name;
  GridViewPage({Key? key, required this.name}) : super(key: key);
  final String img = "Assets/img5.jpg";
  final hightlightList = List<String>.generate(10, (i) => "Name ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.lock_outline, color: Colors.black, size: 18,),
            SizedBox(width: 5,),
            Text(name, style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),),
            Icon(Icons.keyboard_arrow_down, color: Colors.black,),
          ],
        ),

        ///Top Right Side buttons
        actions: [
          IconButton(
              onPressed: () { },
              icon: Icon(Icons.add_box_outlined, color: Colors.black, size: 28,)),
          IconButton(
              onPressed: () { },
            icon: Icon(Icons.menu_outlined, color: Colors.black, size: 28,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Profile image-post-followers-following
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(img),
                ),
                Column(
                  children: [
                    Text("12", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Text("Posts")
                  ],
                ),
                Column(
                  children: [
                    Text("382", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("Followers")
                  ],
                ),
                Column(
                  children: [
                    Text("452", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("Following")
                  ],
                ),
              ],
            ),
            ///Name-Bio-Add link
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('nick name', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),),
                  SizedBox(height: 5,),
                  Text("", style: TextStyle(
                    color: Colors.black
                  ),),
                  SizedBox(height: 5,),
                  Text("Link here")
                ],
              ),
            ),
            ///Profile Edit Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///Edit Profile button
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                },
                  style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text("Edit Profile"),
                    ),
                  ),),

                ///Share profile button
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QrCode()));
                },
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                      backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text("Share Profile"),
                    ),
                  ),),
                ElevatedButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MyPage()));
                },
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                      backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)
                  ),
                  child: Icon(Icons.person_add),)
              ],
            ),
            ///Add highlight
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 10.0),
            //   child: Column(
            //     children: [
            //       Container(
            //         height: 60,
            //         width: 60,
            //         decoration: BoxDecoration(
            //           color: Colors.grey.shade300,
            //           shape: BoxShape.circle
            //         ),
            //         child: Icon(Icons.add),
            //       ),
            //       SizedBox(height: 5,),
            //       GestureDetector(
            //         onTap: (){
            //           Fluttertoast.showToast(msg: "Added");
            //         },
            //           child: Text("Add new")),
            //     ],
            //   ),
            // ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                          onTap: (){
                            Fluttertoast.showToast(msg: "Added");
                          },
                          child: Text("Add new")),
                    ],
                  ),
                  Row(
                    children: List.generate(hightlightList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                    image: AssetImage("Assets/img" + (index + 1).toString() + ".jpg")),
                                  color: Colors.grey.shade300,
                                  shape: BoxShape.circle
                              ),),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                                width: 80,
                                child: Text(hightlightList[index],textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,)),
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(thickness: 2,),
            ),

            ///user posts
            Expanded(
              child: MasonryGridView.builder(
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:  EdgeInsets.all(6.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("Assets/img" + (index + 1).toString() + ".jpg")),
                  );
                },

              ),
            )],
        ),
      ),
    );
  }
}
