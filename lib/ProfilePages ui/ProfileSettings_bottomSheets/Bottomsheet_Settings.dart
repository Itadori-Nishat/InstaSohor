import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitledsadfawdsfdfasdf/ProfilePages%20ui/ProfileSettings_bottomSheets/Personnal%20details%20data%20page.dart';

class BottomSheetSettings extends StatelessWidget {
  const BottomSheetSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Settings and privacy",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your account", style: TextStyle(
                  color: Colors.grey
                ),),
                Text("nisHat", style: TextStyle(
                  color: Colors.grey
                ),)
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, PageTransition(child: PersonalDetailsInfo(),
                          duration: Duration(milliseconds: 200),
                          type: PageTransitionType.bottomToTop));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.library_books_outlined, size: 25,),
                              SizedBox(width: 5,),
                              Text("Personal details",style: TextStyle(
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, size: 18,color: Colors.grey,),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, PageTransition(child: BottomSheetSettings(),
                      //     duration: Duration(milliseconds: 200),
                      //     type: PageTransitionType.bottomToTop));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person, size: 25,),
                              SizedBox(width: 5,),
                              Text("Accout Center",style: TextStyle(
                                fontSize: 16
                              ),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, size: 18,color: Colors.grey,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
