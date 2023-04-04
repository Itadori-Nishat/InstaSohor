import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitledsadfawdsfdfasdf/Edit%20profile.dart';
import 'package:untitledsadfawdsfdfasdf/ShareProfile_qr%20code.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(Icons.lock_outline, color: Colors.black, size: 18,),
            SizedBox(width: 5,),
            Text("user name", style: TextStyle(
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
      body: Column(
        children: [

          ///image-post-followers-following
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("Assets/img1.jpg"),
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

          ///Profile Edit Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
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
                ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                      backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)
                  ),
                  child: Icon(Icons.person_add),)
              ],
            ),
          ),

          SizedBox(
            height: 50,
          ),

          ///user posts
          Expanded(
            child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.0),
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
        ),
          )],
      ),
    );
  }
}
